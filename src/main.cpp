#include <iostream>
#include "copyConstructor.h"

using namespace std;

int main()
{
	std::cout<<"Hello World"<<endl;
	copyConstructor c(string("C"));
	c.printObjName();
	copyConstructor d = c;
	d.printObjName();
	copyConstructor e = move(d);
	return 0;
}
