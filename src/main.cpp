#include <iostream>
#include <kungfu/practice/master.h>

#include "../thirdparty/yijinjing/include/kungfu/practice/apprentice.h"
#include "../thirdparty/yijinjing/include/kungfu/practice/hero.h"
#include "md/CMduserHandler.h"
#include "yijinjing/MyLocator.h"

std::unique_ptr<CMduserHandler> InitMDHandler(int argc, const char* argv[]) {

    std::unique_ptr<CMduserHandler> mduser_handler = std::make_unique<CMduserHandler>();

    for (int i=0; i<argc-2; ++i) {
        mduser_handler->subscribe(const_cast<char*> (argv[i+2]));
    }

    mduser_handler->connect(argv[1]);
    mduser_handler->login();
    return mduser_handler;
}

class MarketData : public kungfu::practice::master {
public:
    explicit MarketData(location_ptr home, bool low_latency = false): master(home, low_latency) {};
    void write() {
        std::cout << "write begin" << std::endl;
        auto writer = get_writer(0);
        std::string& t = writer->open_data<std::string>(0 , 0);
        t = "asdasdasdsaas";
        get_writer(0)->close_data();

        std::cout << "write done" << std::endl;
    }
};

int main(int argc, const char * argv[]) {
    std::cout << "Hello, World!" << std::endl;
    // auto mduser_handler = InitMDHandler(argc, argv);

    namespace kf = kungfu::practice;
    locator_ptr locator = std::make_shared<MyLocator>("./home");
    location_ptr location_ = location::make(mode::LIVE, category::MD, "ctp", "ctp",locator);
    MarketData a(location_, false);
    if (a.has_writer(0)) {
        a.write();
    } else {
        std::cout << "no writer" << std::endl;
    }

    return 0;
}
