//
// Created by 谭德志 on 2024/9/24.
//

#include "MyJournal.h"
#include "../../entity/Quotes.h"

void MyJournal::write(const CThostFtdcDepthMarketDataField &depthMarketData) {
    auto writer = get_writer(0);
    Quotes& quotes = writer->open_data<Quotes>(this->now() , QUOTES);
    from_ctp(depthMarketData, quotes);
    get_writer(0)->close_data();
}
