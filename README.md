# open-api-generator-example

This is an example of Open Api Generator with Flutter and Go.

## Generate client libray

```bash
docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli generate -i /local/todo.yaml -g dart-dio-next -o /local/client-todo-api -c /local/client-config.yml
```

## Generate backend api

```bash
docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli generate -i /local/todo.yaml -g go-server -o /local/server
```
