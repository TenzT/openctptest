#include <iostream>
#include <unistd.h>
#include <string.h>

#include "md/CMduserHandler.h"

int main(int argc, const char * argv[]) {
    std::cout << "Hello, World!" << std::endl;

    CMduserHandler* mduser_handler = new CMduserHandler();

    for (int i=0; i<argc-2; ++i) {
        mduser_handler->subscribe(const_cast<char*> (argv[i+2]));
    }

    mduser_handler->connect(argv[1]);
    mduser_handler->login();

    sleep(1000);

    delete mduser_handler;
    return 0;
}
