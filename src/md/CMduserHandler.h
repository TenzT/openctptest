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
        char** ppInstrument;
        int nInstrument;
public:
        CMduserHandler();
        void connect(std::string frontString);
        void login();
        void subscribe(char * instrumentId);

        void OnRtnDepthMarketData(CThostFtdcDepthMarketDataField *pDepthMarketData) override;

        void OnFrontConnected() override;

        void OnFrontDisconnected(int nReason) override;

        void OnRspUserLogin(CThostFtdcRspUserLoginField *pRspUserLogin, CThostFtdcRspInfoField *pRspInfo, int nRequestID, bool bIsLast) override;

        void OnRtnForQuoteRsp(CThostFtdcForQuoteRspField *pForQuoteRsp) override;

        void OnRspSubMarketData(CThostFtdcSpecificInstrumentField *pSpecificInstrument, CThostFtdcRspInfoField *pRspInfo, int nRequestID, bool bIsLast) override;

        void HandleUserLogin() const;
};



#endif //CMDUSERHANDLER_H
