//
// Created by 谭德志 on 2024/9/24.
//

#ifndef MYJOURNAL_H
#define MYJOURNAL_H
#include <kungfu/practice/apprentice.h>
#include <kungfu/practice/master.h>

#include "../locator/MyLocator.h"
#include "../../entity/Quotes.h"

namespace kf_data = kungfu::yijinjing::data;

class MyJournal : public kungfu::practice::apprentice {
public:
    explicit MyJournal(location_ptr home, bool low_latency = false): apprentice(home, low_latency) {
    };
    void write(const CThostFtdcDepthMarketDataField& depthMarketData) {
        auto writer = get_writer(0);
        Quotes& quotes = writer->open_data<Quotes>(0 , 0);
        from_ctp(depthMarketData, quotes);
        get_writer(0)->close_data();
    }
};



#endif //MYJOURNAL_H
