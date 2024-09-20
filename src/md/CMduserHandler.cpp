//
// Created by 谭德志 on 2024/9/19.
//

#include "CMduserHandler.h"
#include <unistd.h>
#include <string.h>

CMduserHandler::CMduserHandler() {
    ppInstrument = new char *[50];
}

void CMduserHandler::connect(std::string frontString) {
    m_mdApi = CThostFtdcMdApi::CreateFtdcMdApi("./flow_md", false, true);

    m_mdApi->RegisterSpi(this);

    m_mdApi->RegisterFront(const_cast<char*>(frontString.c_str()));

    m_mdApi->Init();

    m_mdApi->Join();
}

void CMduserHandler::login() {
    CThostFtdcReqUserLoginField t = {0};

    strcpy(t.BrokerID, "2344");

    while (m_mdApi->ReqUserLogin(&t, 1) != 0) {
        std::cout << "logining..." << std::endl;
        sleep(5);
    }
}

void CMduserHandler::subscribe(char* instrumentId) {
    ppInstrument[nInstrument] = new char[10];
    strcpy(ppInstrument[nInstrument], instrumentId);
    ++nInstrument;
}

void CMduserHandler::OnRtnDepthMarketData(CThostFtdcDepthMarketDataField *pDepthMarketData) {
    printf("OnRtnDepthMatketData\n");
}

void CMduserHandler::OnFrontConnected() {
    std::cout << "Connected" << std::endl;
}

void CMduserHandler::OnFrontDisconnected(int nReason) {
    std::cout << "Disconnect for reason " << nReason << std::endl;
}

void CMduserHandler::OnRspUserLogin(CThostFtdcRspUserLoginField *pRspUserLogin, CThostFtdcRspInfoField *pRspInfo, int nRequestID, bool bIsLast) {
    std::cout << "User logon " << std::endl;
    this->HandleUserLogin();
};

void CMduserHandler::OnRtnForQuoteRsp(CThostFtdcForQuoteRspField *pForQuoteRsp) {
    printf("OnRtnForQuoteRsp\n");
}

void CMduserHandler::OnRspSubMarketData(CThostFtdcSpecificInstrumentField *pSpecificInstrument,
    CThostFtdcRspInfoField *pRspInfo, int nRequestID, bool bIsLast) {
    std::cout << "subscribe success" << std::endl;
}

void CMduserHandler::HandleUserLogin() const {
    std::cout << "subscribe" << std::endl;
    while (m_mdApi->SubscribeMarketData(ppInstrument, nInstrument)!=0) {
        std::cout << "SubscribeMarketData..." << std::endl;
        sleep(5);
    }
};
