//
// Created by 谭德志 on 2024/9/19.
//

#include "CMduserHandler.h"
#include <unistd.h>
#include <string.h>

#include "../entity/Quotes.h"

CMduserHandler::CMduserHandler() noexcept: m_mdApi(nullptr), nInstrument(0) {
    ppInstrument = new char *[50];
    locator_ptr locator = std::make_shared<MyLocator>("./home");
    location_ptr location = location::make(mode::LIVE, category::MD, "ctp", "ctp", locator);
    journal_ = std::make_unique<MyJournal>(location, false);
}

CMduserHandler::CMduserHandler(CMduserHandler &&rhs) noexcept {
    std::cout << "Moving Constructor" << std::endl;
    m_mdApi = rhs.m_mdApi;
    ppInstrument = rhs.ppInstrument;
    nInstrument = rhs.nInstrument;
    journal_ = std::move(rhs.journal_);
    rhs.m_mdApi = nullptr;
    ppInstrument = rhs.ppInstrument;
}

CMduserHandler::~CMduserHandler() {
    delete[] ppInstrument;
    m_mdApi->Release();
}

void CMduserHandler::connect(const std::string &frontString) {
    m_mdApi = CThostFtdcMdApi::CreateFtdcMdApi("./flow_md", false, true);

    m_mdApi->RegisterSpi(this);

    m_mdApi->RegisterFront(const_cast<char*>(frontString.c_str()));

    m_mdApi->Init();

    m_mdApi->Join();
}

void CMduserHandler::login() const {
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
    journal_->write(*pDepthMarketData);
    // std::cout << "TradingDay: " << pDepthMarketData->TradingDay << std::endl;
    // std::cout << "ExchangeID: " << pDepthMarketData->ExchangeID << std::endl;
    // std::cout << "InstrumentID: " << pDepthMarketData->InstrumentID << std::endl;
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
    // 需要在login之后再发起订阅才有效
    std::cout << "subscribe" << std::endl;
    while (m_mdApi->SubscribeMarketData(ppInstrument, nInstrument)!=0) {
        std::cout << "SubscribeMarketData..." << std::endl;
        sleep(5);
    }
};
