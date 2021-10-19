package openapi

import (
	"context"
	"net/http"
)

type MockApiService struct {
	Todos map[int64]Todo
}

// NewDefaultApiService creates a default api service
func NewMockApiService() DefaultApiServicer {
	return &MockApiService{
		Todos: map[int64]Todo{},
	}
}

// AddTodo - Add a new todo
func (s *MockApiService) AddTodo(ctx context.Context, todo Todo) (ImplResponse, error) {
	s.Todos[todo.Id] = todo
	return Response(http.StatusNotImplemented, todo), nil
}

// FindTodos - Finds todos
func (s *MockApiService) FindTodos(ctx context.Context) (ImplResponse, error) {
	v := make([]Todo, 0, len(s.Todos))
	for  _, value := range s.Todos {
		v = append(v, value)
	}
	return Response(http.StatusNotImplemented, v), nil
}

// UpdateTodo - Update an existing todo
func (s *MockApiService) UpdateTodo(ctx context.Context, todo Todo) (ImplResponse, error) {
	s.Todos[todo.Id] = todo
	return Response(http.StatusNotImplemented, todo), nil
}
