//
// Created by 谭德志 on 2024/9/24.
//

#ifndef QUOTES_H
#define QUOTES_H

#include "../../thirdparty/ctp/include/ThostFtdcUserApiStruct.h"

#define SOURCE_ID_LEN 16
#define DATE_LEN 9
#define INSTRUMENT_ID_LEN 32
#define EXCHANGE_ID_LEN 16

enum msg_type: int32_t {
    QUOTES = 101
};

struct Quotes {
    char source_id[SOURCE_ID_LEN];              //柜台ID
    char trading_day[DATE_LEN];                 //交易日

    int64_t data_time;                          //数据生成时间

    char instrument_id[INSTRUMENT_ID_LEN];      //合约ID
    char exchange_id[EXCHANGE_ID_LEN];          //交易所ID

    double pre_close_price;                     //昨收价
    double pre_settlement_price;                //昨结价

    double last_price;                          //最新价
    int64_t volume;                             //数量
    double turnover;                            //成交金额

    double pre_open_interest;                   //昨持仓量
    double open_interest;                       //持仓量

    double open_price;                          //今开盘
    double high_price;                          //最高价
    double low_price;                           //最低价

    double upper_limit_price;                   //涨停板价
    double lower_limit_price;                   //跌停板价

    double close_price;                         //收盘价
    double settlement_price;                    //结算价

    double bid_price[10];                       //申买价
    double ask_price[10];                       //申卖价
    int64_t bid_volume[10];                     //申买量
    int64_t ask_volume[10];                     //申卖量

    std::string get_source_id() const
    { return std::string(source_id); }

    void set_source_id(const std::string& source_id)
    {strncpy(this->source_id, source_id.c_str(), SOURCE_ID_LEN);}

    std::string get_trading_day() const
    { return std::string(trading_day); }

    void set_trading_day(const std::string& trading_day)
    {strncpy(this->trading_day, trading_day.c_str(), DATE_LEN);}

    std::string get_instrument_id() const
    { return std::string(instrument_id); }

    void set_instrument_id(const std::string& instrument_id)
    { strncpy(this->instrument_id, instrument_id.c_str(), INSTRUMENT_ID_LEN);}

    std::string get_exchange_id() const
    { return std::string(exchange_id); }

    void set_exchange_id(const std::string& exchange_id)
    {strncpy(this->exchange_id, exchange_id.c_str(), EXCHANGE_ID_LEN);}

    std::vector<double> get_bid_price() const
    { return std::vector<double>(bid_price, bid_price + 10); }

    void set_bid_price(const std::vector<double> &bp)
    { memcpy(bid_price, (const void*) bp.data(), sizeof(double) * std::min(10, int(bp.size())));}

    std::vector<double> get_ask_price() const
    { return std::vector<double>(ask_price, ask_price + 10); }

    void set_ask_price(const std::vector<double> &ap)
    { memcpy(ask_price, (const void*) ap.data(), sizeof(double) * std::min(10, int(ap.size())));}

    std::vector<int64_t> get_bid_volume() const
    { return std::vector<int64_t>(bid_volume, bid_volume + 10); }

    void set_bid_volume(const std::vector<int64_t> &bv)
    { memcpy(bid_volume, (const void*) bv.data(), sizeof(int64_t) * std::min(10, int(bv.size())));}

    std::vector<int64_t> get_ask_volume() const
    { return std::vector<int64_t>(ask_volume, ask_volume + 10); }

    void set_ask_volume(const std::vector<int64_t> &av)
    { memcpy(ask_volume, (const void*) av.data(), sizeof(int64_t) * std::min(10, int(av.size())));}
#ifndef _WIN32
} __attribute__((packed));
#else
};
#endif

inline void from_ctp(const CThostFtdcDepthMarketDataField &ori, Quotes &des)
    {
        strcpy(des.source_id, "ctp");
        strcpy(des.trading_day, ori.TradingDay);
        strcpy(des.instrument_id, ori.InstrumentID);
        // strcpy(des.exchange_id, get_exchange_id_from_future_instrument_id(std::string(ori.InstrumentID)).c_str());
        // des.data_time = nsec_from_ctp_time(ori.ActionDay, ori.UpdateTime, ori.UpdateMillisec);
        des.last_price = ori.LastPrice;
        des.pre_settlement_price = ori.PreSettlementPrice;
        des.pre_close_price = ori.PreClosePrice;
        des.pre_open_interest = ori.PreOpenInterest;
        des.open_price = ori.OpenPrice;
        des.high_price = ori.HighestPrice;
        des.low_price = ori.LowestPrice;
        des.volume = ori.Volume;
        des.turnover = ori.Turnover;
        des.open_interest = ori.OpenInterest;
        des.close_price = ori.ClosePrice;
        // des.settlement_price = is_too_large(ori.SettlementPrice) ? 0.0 : ori.SettlementPrice;
        des.upper_limit_price = ori.UpperLimitPrice;
        des.lower_limit_price = ori.LowerLimitPrice;

        des.bid_price[0] = ori.BidPrice1;
        des.bid_price[1] = ori.BidPrice2;
        des.bid_price[2] = ori.BidPrice3;
        des.bid_price[3] = ori.BidPrice4;
        des.bid_price[4] = ori.BidPrice5;

        des.ask_price[0] = ori.AskPrice1;
        des.ask_price[1] = ori.AskPrice2;
        des.ask_price[2] = ori.AskPrice3;
        des.ask_price[3] = ori.AskPrice4;
        des.ask_price[4] = ori.AskPrice5;

        des.bid_volume[0] = ori.BidVolume1;
        des.bid_volume[1] = ori.BidVolume2;
        des.bid_volume[2] = ori.BidVolume3;
        des.bid_volume[3] = ori.BidVolume4;
        des.bid_volume[4] = ori.BidVolume5;

        des.ask_volume[0] = ori.AskVolume1;
        des.ask_volume[1] = ori.AskVolume2;
        des.ask_volume[2] = ori.AskVolume3;
        des.ask_volume[3] = ori.AskVolume4;
        des.ask_volume[4] = ori.AskVolume5;

    }

#endif //QUOTES_H
