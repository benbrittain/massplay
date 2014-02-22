all: main.o MassplayWS.o
	g++ main.o MassplayWS.o

main.o: main.cpp
	g++ -c main.cpp

MassplayWS.o: MassplayWS.cpp
	g++ -c MassplayWS.cpp

clean:
	rm *.o
