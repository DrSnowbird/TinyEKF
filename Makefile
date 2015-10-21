all: gps_ekf

gps: gps_ekf
	./gps_ekf

gps_ekf: gps_ekf.cpp tinyekf.cpp tinyekf.hpp tinyekf.h linalg.h
	g++ -Wall -o gps_ekf gps_ekf.cpp tinyekf.cpp

clean:
	rm -f gps_ekf *~

commit:
	git commit -a --allow-empty-message -m ''
	git push
