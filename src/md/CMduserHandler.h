//
// Created by 谭德志 on 2024/9/19.
//

#ifndef CMDUSERHANDLER_H
#define CMDUSERHANDLER_H
#include "ThostFtdcMdApi.h"
#include <iostream>

class CMduserHandler : public CThostFtdcMdSpi {
private:
        CThostFtdcMdApi* m_mdApi;
public:

        void connect(std::string front_string);
        void login();
        void subscribe(char **ppInstrument, int ppInstrumentCount);

        void OnRtnDepthMarketData(CThostFtdcDepthMarketDataField *pDepthMarketData) override;

        void OnFrontConnected() override;

        void OnFrontDisconnected(int nReason) override;

        void OnRspUserLogin(CThostFtdcRspUserLoginField *pRspUserLogin, CThostFtdcRspInfoField *pRspInfo, int nRequestID, bool bIsLast) override;

        void OnRtnForQuoteRsp(CThostFtdcForQuoteRspField *pForQuoteRsp) override;

};



#endif //CMDUSERHANDLER_H
