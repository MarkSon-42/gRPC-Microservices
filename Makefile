run-orders:
	@go run services/orders/*.go

run-kitchen:
	@go run services/kitchen/*.go

gen:
	@protoc \
	--proto_path=protobuf "protobuf/orders.proto" \
	--go_out=services/common/genproto/orders --go_opt=paths=source_relative \
  	--go-grpc_out=services/common/genproto/orders --go-grpc_opt=paths=source_relative


# 3줄 요약

# run-orders : orders 서비스 실행.
# run-kitchen : kitchen 서비스 실행

# gen: orders.proto파일을 컴파일해서 Go용 Protobuf 밎 gRPC 코드를 생성함.

