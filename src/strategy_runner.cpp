#include <iostream>

#include "strategy/runner.h"
#include "yijinjing/locator/MyLocator.h"
#include "yijinjing/master/MyMaster.h"

using namespace kungfu::yijinjing::data;

int main(int argc, const char * argv[]) {
    std::cout << "Hello, Runner!" << std::endl;

    locator_ptr locator = std::make_shared<MyLocator>("./home");
    location_ptr location = location::make(mode::LIVE, category::STRATEGY, "ctp", "ctp", locator);
    runner r(location, false);

    r.run();

    return 0;
}
