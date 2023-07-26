.PHONY: setup
setup:
	mkdir -p generated
	mkdir -p generated/todo

.PHONY: generate
generate: setup todo

.PHONY: todo
todo:
	protoc -I . \
		--go_out ./generated/todo --go_opt paths=source_relative \
		--go-grpc_out ./generated/todo --go-grpc_opt paths=source_relative \
		todo.proto