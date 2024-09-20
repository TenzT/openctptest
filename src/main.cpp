#include <iostream>
#include <unistd.h>

#include "md/CMduserHandler.h"

int main(int argc, const char * argv[]) {
    std::cout << "Hello, World!" << std::endl;
    CMduserHandler* mduser_handler = new CMduserHandler();
    mduser_handler->connect(argv[1]);

    int nInstrument = argc - 2;

    char** ppInstrument = new char * [50];
    for (int i=0; i<argc-2; ++i) {
        ppInstrument[i] = new char[10];
        strcpy(ppInstrument[i], argv[i]);
    }
    mduser_handler->subscribe(ppInstrument, nInstrument);

    sleep(1000);

    delete mduser_handler;
    delete[] ppInstrument;
    return 0;
}
