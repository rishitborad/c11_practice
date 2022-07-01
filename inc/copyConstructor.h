#include <iostream>

using namespace std;

class copyConstructor{
private:
	string _name;
public:
	copyConstructor() = delete;
	copyConstructor(const string& name);
	copyConstructor(const copyConstructor& obj);
	copyConstructor(copyConstructor&& obj);
	void printObjName();
};
