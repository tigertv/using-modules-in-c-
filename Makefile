CXX = clang++-8
OPTS = -std=c++2a -Wall -Wextra -fmodules-ts

main: 
	$(CXX) $(OPTS) --precompile mymodule.cppm -o mymodule.pcm
	$(CXX) $(OPTS) -c mymodule.pcm -o mymodule.o
	$(CXX) $(OPTS) -fprebuilt-module-path=. mymodule.o main.cpp -o main
clean:
	rm -f main *.o *.pcm
