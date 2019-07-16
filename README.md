# Akirachix Notes API

This is a RESTful API for the Notes App.


### Get All Notes
` GET https://akirachixnotesapi.herokuapp.com/api/v1/notes`

```
[
    {
        "id": 1,
        "title": "Welcome",
        "noteText": "To a new exciting world"
    },
    {
        "id": 2,
        "title": "The journey of our times",
        "noteText": "We are now entering a new realm of infinite possibilities, stay tuned"
    },
    {
        "id": 3,
        "title": "Asparagus",
        "noteText": "Asparagus, or garden asparagus, folk name sparrow grass, scientific name Asparagus officinalis, is a perennial flowering plant species in the genus Asparagus. Its young shoots are used as a spring vegetable."
    },
    {
        "id": 8,
        "title": "Black Nightshade",
        "noteText": "A vegetable species found in Kenya. The scientific name is Solanum Nigrum. It has black fruits"
    }
]
```

### Get a specific note by id
`GET https://akirachixnotesapi.herokuapp.com/api/v1/notes/{id}`
```
EXAMPLE:
GET https://akirachixnotesapi.herokuapp.com/api/v1/notes/3

{
    "id": 3,
    "title": "Asparagus",
    "noteText": "Asparagus, or garden asparagus, folk name sparrow grass, scientific name Asparagus officinalis, is a perennial flowering plant species in the genus Asparagus. Its young shoots are used as a spring vegetable."
}
```

### Post a note
`POST https://akirachixnotesapi.herokuapp.com/api/v1/notes?title={title}&noteText={noteText}`

```
EXAMPLE:
POST https://akirachixnotesapi.herokuapp.com/api/v1/notes?title=Factory&noteText=Factory Method is a creational design pattern
{
    "id": 160,
    "title": "Factory ",
    "noteText": "Factory Method is a creational design pattern"
}

```

###  Edit a Note

`PUT https://akirachixnotesapi.herokuapp.com/api/v1/notes/{id}?title={title}&noteText={noteText}`
```
EXAMPLE:
PUT https://akirachixnotesapi.herokuapp.com/api/v1/notes/160?title=Factory Method&noteText=A method of designing factories

{
    "id": 160,
    "title": "Factory Method",
    "noteText": "A method of designing factories"
}
```

### Delete a Note by id
`DELETE https://akirachixnotesapi.herokuapp.com/api/v1/notes/{id}`

```
EXAMPLE:
DELETE https://akirachixnotesapi.herokuapp.com/api/v1/notes/7

{
    "message": "note successfully deleted",
    "response_code": 200
}
```
