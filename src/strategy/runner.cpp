//
// Created by 谭德志 on 2024/9/26.
//

#include "runner.h"
#include "../entity/Quotes.h"
using namespace kungfu::rx;
using namespace kungfu::yijinjing;

void runner::on_start() {
    auto md_location = location::make(mode::LIVE, category::MD, "ctp", "ctp", home_->locator);
    this->request_read_from(this->now(), md_location->uid, true);
    // this->request_write_to(this->now(), md_location->uid);   // 写方向
    market_data_["ctp"] = md_location->uid;
    SPDLOG_INFO("added md {} [{:08x}]", "ctp", md_location->uid);

    events_ | is(QUOTES) |
        $([&](event_ptr event)
          {
             std::cout << "quotes received: instrumentId: " << event->data<Quotes>().instrument_id << std::endl;
          });

    apprentice::on_start();
}
