#include <iostream>
#include <unistd.h>
#include <string.h>

#include "md/CMduserHandler.h"

std::unique_ptr<CMduserHandler> InitMDHandler(int argc, const char* argv[]) {

    std::unique_ptr<CMduserHandler> mduser_handler = std::make_unique<CMduserHandler>();

    for (int i=0; i<argc-2; ++i) {
        mduser_handler->subscribe(const_cast<char*> (argv[i+2]));
    }

    mduser_handler->connect(argv[1]);
    mduser_handler->login();
    return mduser_handler;
}

int main(int argc, const char * argv[]) {
    std::cout << "Hello, World!" << std::endl;
    auto mduser_handler = InitMDHandler(argc, argv);
    std::cout << mduser_handler.get() << std::endl;
    sleep(1000);

    return 0;
}
