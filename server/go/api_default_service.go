/*
 * OpenAPI Example
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * API version: 1.0.0
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi

import (
	"context"
	"net/http"
	"errors"
)

// DefaultApiService is a service that implements the logic for the DefaultApiServicer
// This service should implement the business logic for every endpoint for the DefaultApi API.
// Include any external packages or services that will be required by this service.
type DefaultApiService struct {
}

// NewDefaultApiService creates a default api service
func NewDefaultApiService() DefaultApiServicer {
	return &DefaultApiService{}
}

// AddTodo - Add a new todo
func (s *DefaultApiService) AddTodo(ctx context.Context, todo Todo) (ImplResponse, error) {
	// TODO - update AddTodo with the required logic for this service method.
	// Add api_default_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	//TODO: Uncomment the next line to return response Response(200, Todo{}) or use other options such as http.Ok ...
	//return Response(200, Todo{}), nil

	return Response(http.StatusNotImplemented, nil), errors.New("AddTodo method not implemented")
}

// FindTodos - Finds todos
func (s *DefaultApiService) FindTodos(ctx context.Context) (ImplResponse, error) {
	// TODO - update FindTodos with the required logic for this service method.
	// Add api_default_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	//TODO: Uncomment the next line to return response Response(200, []Todo{}) or use other options such as http.Ok ...
	//return Response(200, []Todo{}), nil

	return Response(http.StatusNotImplemented, nil), errors.New("FindTodos method not implemented")
}

// UpdateTodo - Update an existing todo
func (s *DefaultApiService) UpdateTodo(ctx context.Context, todo Todo) (ImplResponse, error) {
	// TODO - update UpdateTodo with the required logic for this service method.
	// Add api_default_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	//TODO: Uncomment the next line to return response Response(200, Todo{}) or use other options such as http.Ok ...
	//return Response(200, Todo{}), nil

	return Response(http.StatusNotImplemented, nil), errors.New("UpdateTodo method not implemented")
}
