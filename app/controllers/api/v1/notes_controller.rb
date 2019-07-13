class Api::V1::NotesController < ApplicationController
  before_action :set_note, only: [:show, :update, :destroy]

  # GET /notes
  def index
    @notes = Note.all.order(id: :asc)

    render json: @notes
  end

  # GET /notes/1
  def show
    render json: @note
  end

  # POST /notes
  def create
    #@note = Note.new(note_params)
    
    id = params[:id]
    title = params[:title]
    noteText = params[:noteText]
    coordinates = params[:coordinates]
    picture = params[:picture]

    @note = Note.new(id: id, title: title, noteText: noteText, coordinates: coordinates, picture: picture)

    if @note.save
      render json: @note, status: :created #, location: @note
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /notes/1
  def update
    if @note.update(note_params)
      render json: @note
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # DELETE /notes/1
  def destroy
    @note.destroy
    json_str = {'message' => 'note successfully deleted'}.to_json
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
    render json: @note
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def note_params
      params.require(:note).permit(:id, :title, :noteText, :coordinates, :picture)
    end
end
