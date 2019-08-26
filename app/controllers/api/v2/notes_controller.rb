class Api::V2::NotesController < ApplicationController
  before_action :set_note, only: [:show, :update, :destroy]

  # GET /notes
  def index
    user = User.find(params[:user_id])
    @notes = user.notes.order(id: :asc)

    @notes.each { |n| n.picture.slice!(0,2) if n.picture.present?}

    render json: @notes
  end

  # GET /notes/1
  def show
    user_id = params[:user_id]
    note_id = params[:id]

    if @note = Note.find_by(user_id: user_id, id: note_id)
      @note.picture.slice!(0,2) if @note.picture.present?
      render json: @note
    else
      render json: {"message" => "Couldn't find note with id #{note_id}", "response_code"=>403}
    end
  end

  # POST /notes
  def create
    id = params[:id]
    title = params[:title]
    noteText = params[:noteText]
    coordinates = params[:coordinates]
    picture = params[:picture]
    user_id = params[:user_id]


    @note = Note.new(id: id, title: title, noteText: noteText, coordinates: coordinates, picture: picture,user_id: user_id)

    if @note.save
      @note.picture.slice!(0,2) if @note.picture.present?
      render json: @note, status: :created
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /notes/1
  def update
    id = params[:id]
    title = params[:title]
    noteText = params[:noteText]
    coordinates = params[:coordinates]
    picture = params[:picture]
    user_id = params[:user_id]

    if @note.update(id: id, title: title, noteText: noteText, coordinates: coordinates, picture: picture, user_id: user_id)
      render json: @note
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # DELETE /notes/1
  def destroy
    @note.destroy
    json_str = {'message' => 'note successfully deleted', "response_code" => 200}.to_json
    render json: json_str
  end

  # POST /notes/add
  def add
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i
    sum = num1+ num2
    json_str = {'result' => 'the sum is '+sum.to_s}.to_json

    render json: json_str
  end

  def flipnote
    @note = Note.find(params[:id])
    noteText = @note.noteText
    revStr = noteText.reverse!
    @note.noteText = revStr

    @note.update(id: @note.id, title: @note.title, noteText: revStr)
    render json: @note
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def note_params
      params.require(:note).permit(:id, :title, :noteText, :coordinates, :picture, :user_id)
    end
end
