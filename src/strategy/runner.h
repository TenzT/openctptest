//
// Created by 谭德志 on 2024/9/26.
//

#ifndef RUNNER_H
#define RUNNER_H
#include <kungfu/practice/apprentice.h>
#include <kungfu/yijinjing/common.h>

using namespace kungfu::yijinjing::data;

class runner : public kungfu::practice::apprentice {
private:
    location_ptr home_;
    std::unordered_map<std::string, uint32_t> market_data_;
public:
    explicit runner(location_ptr home, bool low_latency = false) : apprentice(home, low_latency) {
        home_ = home;
    }
    void on_start() override;
};



#endif //RUNNER_H
