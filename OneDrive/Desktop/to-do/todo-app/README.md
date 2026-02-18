# To-Do Application

A full-stack todo application with a **Spring Boot** REST API and a **React** frontend. Create, update, and manage tasks with a clean, responsive UI.

![Java](https://img.shields.io/badge/Java-11+-ED8B00?logo=openjdk)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-2.7-6DB33F?logo=spring)
![React](https://img.shields.io/badge/React-18-61DAFB?logo=react)
![H2](https://img.shields.io/badge/Database-H2-4479A1)

---

## Features

- **CRUD operations** — Create, read, update, and delete todos
- **Completion toggle** — Mark tasks as done or incomplete
- **Filter** — View all, completed, or active todos
- **Inline editing** — Edit title and description in place
- **REST API** — JSON API with validation and error handling
- **In-memory database** — H2 for zero-config local development

---

## Tech Stack

| Layer      | Technology |
|-----------|------------|
| Backend   | Spring Boot 2.7, Java 11, Maven, Spring Data JPA |
| Frontend  | React 18, Axios |
| Database  | H2 (in-memory) |

---

## Project Structure

```
├── backend/                    # Spring Boot API
│   ├── src/main/java/com/todo/
│   │   ├── controller/          # REST endpoints
│   │   ├── service/             # Business logic
│   │   ├── repository/          # JPA data access
│   │   ├── model/               # Todo entity
│   │   └── TodoApplication.java
│   ├── pom.xml
│   └── application.properties
├── frontend/                    # React SPA
│   ├── public/
│   ├── src/
│   │   ├── components/          # TodoForm, TodoItem, TodoList
│   │   ├── services/            # API client
│   │   ├── App.js
│   │   └── index.js
│   └── package.json
├── README.md
├── architecture.md
└── api.md
```

---

## Quick Start

### Prerequisites

- **Java 11+** and **Maven** (backend)
- **Node.js 14+** and **npm** (frontend)

### 1. Run the backend

```bash
cd backend
mvn spring-boot:run
```

API runs at **http://localhost:8080**

### 2. Run the frontend

```bash
cd frontend
npm install
npm start
```

App runs at **http://localhost:3000**

Use the app in the browser; the frontend proxy sends API requests to the backend.

---

## API Overview

| Method   | Endpoint           | Description        |
|----------|--------------------|--------------------|
| `GET`    | `/api/todos`       | List todos (optional `?completed=true/false`) |
| `POST`   | `/api/todos`       | Create a todo      |
| `PUT`    | `/api/todos/{id}`  | Update a todo      |
| `DELETE` | `/api/todos/{id}`  | Delete a todo      |

See **api.md** for request/response formats and **architecture.md** for system design.

---

## Repository

**GitHub:** [chaitu0-12/to-do-](https://github.com/chaitu0-12/to-do-)

---

## License

MIT
