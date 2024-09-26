#include <iostream>

#include "yijinjing/locator/MyLocator.h"
#include "yijinjing/master/MyMaster.h"

using namespace kungfu::yijinjing::data;

int main(int argc, const char * argv[]) {
    std::cout << "Hello, Master!" << std::endl;

    locator_ptr locator = std::make_shared<MyLocator>("./home");
    location_ptr location = location::make(mode::LIVE, category::SYSTEM, "master", "master", locator);
    MyMaster my_master(location, false);

    my_master.run();

    return 0;
}
