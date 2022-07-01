

#include <iostream>
#include "copyConstructor.h"

copyConstructor::copyConstructor(const string &name)
: _name(name)
{
	cout << "This is constructor" << endl;
}

copyConstructor::copyConstructor(const copyConstructor& obj)
{
	this->_name = obj._name;
	cout << "This is copy constructor" << endl;
}

copyConstructor::copyConstructor(copyConstructor&& obj)
: _name(obj._name)
{
	cout<<"This is move constructor"<< endl;
}

void copyConstructor::printObjName()
{
	cout<<"This is "<< _name<<" object"<< endl;
}

