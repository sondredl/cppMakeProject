all:
	@if [ ! -d "build" ]; then mkdir build; fi
	cd build/ && cmake -G Ninja .. && ninja
	./build/ApplicationName

setup:
	cp project/hooks/pre-commit .git/hooks/pre-commit
	chmod +x .git/hooks/pre-commit
