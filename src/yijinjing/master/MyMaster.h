//
// Created by 谭德志 on 2024/9/26.
//

#ifndef MASTER_H
#define MASTER_H
#include <kungfu/practice/master.h>

using namespace kungfu::yijinjing::data;

class MyMaster : public kungfu::practice::master{
public:
    explicit MyMaster(location_ptr home, bool low_latency = false): master(home, low_latency) {};
};



#endif //MASTER_H
