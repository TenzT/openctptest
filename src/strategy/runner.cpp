//
// Created by 谭德志 on 2024/9/26.
//

#include "runner.h"
using namespace kungfu::rx;
using namespace kungfu::yijinjing;

void runner::on_start() {
    auto md_location = location::make(mode::LIVE, category::MD, "ctp", "ctp", home_->locator);
    this->request_read_from(this->now(), md_location->uid, true);
    // this->request_write_to(this->now(), md_location->uid);   // 写方向
    market_data_["ctp"] = md_location->uid;
    SPDLOG_INFO("added md {} [{:08x}]", "ctp", md_location->uid);

    events_ | is(0) |
        $([&](event_ptr event)
          {
             std::cout << "quotes received" << std::endl;
          });

    apprentice::on_start();
}
