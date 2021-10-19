# todo_api.api.DefaultApi

## Load the API package
```dart
import 'package:todo_api/api.dart';
```

All URIs are relative to *http://todo.swagger.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addTodo**](DefaultApi.md#addtodo) | **POST** /todos | Add a new todo
[**findTodos**](DefaultApi.md#findtodos) | **GET** /todos | Finds todos
[**updateTodo**](DefaultApi.md#updatetodo) | **PUT** /todos | Update an existing todo


# **addTodo**
> Todo addTodo(todo)

Add a new todo

### Example
```dart
import 'package:todo_api/api.dart';

final api = TodoApi().getDefaultApi();
final Todo todo = ; // Todo | Todo object that needs to be added to the store

try {
    final response = api.addTodo(todo);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DefaultApi->addTodo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **todo** | [**Todo**](Todo.md)| Todo object that needs to be added to the store | 

### Return type

[**Todo**](Todo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findTodos**
> BuiltList<Todo> findTodos()

Finds todos

### Example
```dart
import 'package:todo_api/api.dart';

final api = TodoApi().getDefaultApi();

try {
    final response = api.findTodos();
    print(response);
} catch on DioError (e) {
    print('Exception when calling DefaultApi->findTodos: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Todo&gt;**](Todo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTodo**
> Todo updateTodo(todo)

Update an existing todo

### Example
```dart
import 'package:todo_api/api.dart';

final api = TodoApi().getDefaultApi();
final Todo todo = ; // Todo | Todo object that needs to be added to the store

try {
    final response = api.updateTodo(todo);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DefaultApi->updateTodo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **todo** | [**Todo**](Todo.md)| Todo object that needs to be added to the store | 

### Return type

[**Todo**](Todo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

