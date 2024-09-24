//
// Created by 谭德志 on 2024/9/24.
// 用于定位当前应该写哪个文件
//

#ifndef MYLOCATOR_H
#define MYLOCATOR_H
#include "../../thirdparty/yijinjing/include/kungfu/yijinjing/common.h"

using namespace kungfu::yijinjing::data;

class MyLocator : public locator {
    std::string home_;
public:
    explicit MyLocator(std::string home) : home_(std::move(home)) {};

    [[nodiscard]] bool has_env(const std::string &name) const override;

    [[nodiscard]] const std::string get_env(const std::string &name) const override;

    [[nodiscard]] const std::string layout_dir(location_ptr location, layout l) const override;

    [[nodiscard]] const std::string layout_file(location_ptr location, layout l, const std::string &name) const override;

    [[nodiscard]] const std::vector<int> list_page_id(location_ptr location, uint32_t dest_id) const override;

    [[nodiscard]] const std::string default_to_system_db(location_ptr location, const std::string &name) const override;
};



#endif //MYLOCATOR_H
