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

## API v2

### Register a user
`POST https://akirachixnotesapi.herokuapp.com/api/v2/register?email={email}&password={password}`

```
EXAMPLE:
POST https://akirachixnotesapi.herokuapp.com/api/v2/register?email=abcd@gmail.com&password=abcd123

{
    "message": "registration successful",
    "user_id": 4,
    "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE1Njg3MzIzNDl9.PxoIFJUs-xQuZ-qpTwqy2X86FWte4T31yjm5-6QbFVU"
}
```

### Login an existing user
`POST https://akirachixnotesapi.herokuapp.com/api/v2/login?email={email}&password={password}`

```
EXAMPLE:
POST https://akirachixnotesapi.herokuapp.com/api/v2/login?email=samadu@gmail.com&password=amadeus

{
    "message": "login successful",
    "user_id": 5,
    "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1LCJleHAiOjE1Njg3MzI3MTZ9.he1yofO7gDPqQ1S90jfV_W6FUnMegOvr3Tcrlero_HU"
}

```

### Get user notes
`GET https://akirachixnotesapi.herokuapp.com/api/v2/users/{user_id}/notes`

```
EXAMPLE:
GET https://akirachixnotesapi.herokuapp.com/api/v2/users/3/notes

[
{
        "id": 364,
        "title": "maize",
        "noteText": "and beans",
        "picture": ""
    },
    {
        "id": 371,
        "title": "wasa",
        "noteText": "heyyyyyy",
        "picture": "//akirachixnotesapi.s3.amazonaws.com/notes/pictures/000/000/371/original/call.gif?1566820796"
    },
    {
        "id": 372,
        "title": "silent",
        "noteText": "silent am",
        "picture": "//akirachixnotesapi.s3.amazonaws.com/notes/pictures/000/000/372/original/silent.gif?1566820996"
    },
    {
        "id": 373,
        "title": "Anatha",
        "noteText": "Deay",
        "picture": "//akirachixnotesapi.s3.amazonaws.com/notes/pictures/000/000/373/original/bizclub_vas.png?1566822554"
    },
    {
        "id": 374,
        "title": "Galana",
        "noteText": "Lenana",
        "picture": "//akirachixnotesapi.s3.amazonaws.com/notes/pictures/000/000/374/original/premier_vas.png?1566823297"
    }
]
```
