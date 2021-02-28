all: clean build run
clean:
	@docker rm -f 2048-game || true
	@docker rmi 2048-game || true
build:
	@docker build -t 2048-game .
run:
	@docker run -d -p 8080:80 --name 2048-game 2048-game:latest
