//
// Created by 谭德志 on 2024/9/19.
//

#include "CMduserHandler.h"
#include <unistd.h>

void CMduserHandler::connect(std::string front_addr) {
    m_mdApi = CThostFtdcMdApi::CreateFtdcMdApi("./flow_md", false, true);

    m_mdApi->RegisterSpi(this);

    m_mdApi->RegisterFront(const_cast<char*>(front_addr.c_str()));

    m_mdApi->Init();
}

void CMduserHandler::login() {
    CThostFtdcReqUserLoginField t = {0};

    while (m_mdApi->ReqUserLogin(&t, 1) != 0) {
        std::cout << "logining..." << std::endl;
        sleep(5);
    }
}

void CMduserHandler::subscribe(char** ppInstrument, int ppInstrumentCount) {
    std::cout << "subscribe" << std::endl;
    while (m_mdApi->SubscribeMarketData(ppInstrument, ppInstrumentCount)!=0) {
        std::cout << "subscribing..." << std::endl;
        sleep(5);
    }
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
