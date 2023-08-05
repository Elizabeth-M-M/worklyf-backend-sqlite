# Worklyf-backend
#### A Ruby on Rails API

##### Owner
Elizabeth Mwende Muthusi
##### Date
05/08/2023.

#### Description
This is the back end of the Worklyf application site that utilises the Ruby on rails framework and an Sqlite3 database. It's front end repository is [here](https://github.com/Elizabeth-M-M/worklyf)


#### Setup Requirements
- Git (to clone the repository)
- Ruby 2.7.4
- Ruby on Rails
- Sqlite3 (to run the database)
- Postman (to test the API)

#### Installing and Running
1. Clone this repository on your local machine
2. Navigate or cd to the project directory in your terminal.
3. Install the required dependencies by running:
```console
$ bundle install
```
4. Run the database migrations and seed the database using:
```console
$ rails db:migrate db:seed
```
5. Start the server by running:
```console
$ rails server
```
6. The app should now be running on `http://localhost:3000`


### Some endpoints include:-

#### POST

/signup
- Create a new user

###### Action
```console
{
  "full_name":"Kobi2 Micheals",
  "email": "kobi345@gmail.com",
  "password": "98765",
  "password_confirmation": "98765"
}
```
###### Response if successful:
```console
{
    "id": 14,
    "email": "kobi3@gmail.com",
    "summary": {
        "personal": "0",
        "work": "0",
        "complete": "0",
        "pending": "0"
    },
    "pending": [
        []
    ],
    "completed": [
        []
    ],
    "profile": {
        "id": 14,
        "gender": null,
        "age": null,
        "occupation": null,
        "full_name": "Kobi2 Micheals",
        "user_id": 14
    }
}
```
###### Response if not successfull:
```console
{
     "errors": [
        "Password confirmation doesn't match Password",
        "Email has already been taken",
        "Password is too short (minimum is 5 characters)"
    ]
}
```

#### POST

/login
- Finds a user with matching username and password in the database

###### Action
```console
{

  "email": "kobi3@gmail.com",
  "password": "98765"

}
```
###### Response:
```console
{
    "id": 14,
    "email": "kobi3@gmail.com",
    "summary": {
        "personal": "0",
        "work": "0",
        "complete": "0",
        "pending": "0"
    },
    "pending": [
        []
    ],
    "completed": [
        []
    ],
    "profile": {
        "id": 14,
        "gender": null,
        "age": null,
        "occupation": null,
        "full_name": "Kobi2 Micheals",
        "user_id": 14
    }
}
```




#### POST

/tasks
- Creates a task

###### Action
```console
{
  "category_id": 1,
  "description": "Commodi voluptatibus",
  "end_date": "2026-07-26",
  "end_time": "11:32",
  "reminder": true,
  "start_date": "2023-07-26",
  "start_time": "23:49",
  "title": "Est culpa ut ad est",
  "group_id":1
}

```
###### Response if not successfull:
```console
{
    "errors": [
        "Start date can't be in the past"
    ]
}
```
###### Response if successfull:
```console
{
    "id": 55,
    "category_id": 1,
    "group_id": 1,
    "user_id": 2,
    "title": "Est culpa ut ad est",
    "start_date": "2023-08-26T00:00:00.000Z",
    "end_date": "2026-08-26T00:00:00.000Z",
    "status": null,
    "label": null,
    "reminder": true,
    "description": "Commodi voluptatibus",
    "start_time": "2000-01-01T23:49:00.000Z",
    "end_time": "2000-01-01T11:32:00.000Z",
    "category": {
        "id": 1,
        "name": "Academic"
    },
    "group": {
        "id": 1,
        "name": "Personal"
    }
}
```

#### GET

/tasks/:id
- Gets a specific task

###### Response:
```console
{
    "id": 1,
    "category_id": 1,
    "group_id": 1,
    "user_id": 1,
    "title": "Buy groceries",
    "start_date": "2023-07-06T00:00:00.000Z",
    "end_date": "2023-07-20T00:00:00.000Z",
    "status": true,
    "label": "non-urgent",
    "reminder": true,
    "description": "Go to the supermarket and buy groceries for the week.",
    "start_time": "2000-01-01T20:04:00.000Z",
    "end_time": "2000-01-01T20:04:00.000Z",
    "category": {
        "id": 1,
        "name": "Academic"
    },
    "group": {
        "id": 1,
        "name": "Personal"
    }
}
```
#### GET

/profiles/:id
- Gets a specific profile

###### Response:
```console
{
    "id": 9,
    "gender": null,
    "age": null,
    "occupation": null,
    "full_name": Milly,
    "user_id": 9
}
```
#### PATCH

/profiles/:id
- Updates profile

###### Action
```console
{
  "gender": "female",
  "age": "56",
  "occupation": "Cook"

}
```
###### Response:
```console
{
    "id": 9,
    "gender": "female",
    "age": "56",
    "occupation": "Cook",
    "full_name": Milly,
    "user_id": 9
}
```
#### DELETE

/tasks/:id

- Deletes an task instance
- No response

- Test the endpoints using Postman with `http://localhost:3000/<endpoint>`

#### Known Bugs
Currently the deployed API by Render is slow in terms of response, hence the front end has some delays in terms of response.

#### Support and contact details
To make a contribution to the code used or any suggestions, you can click on the contact link and email me your suggestions.

Email: elimuthusi6@gmail.com


