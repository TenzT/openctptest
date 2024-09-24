//
// Created by 谭德志 on 2024/9/24.
//

#include "MyLocator.h"

#include <filesystem>
#include <regex>
#include <sstream>
#include <kungfu/yijinjing/msg.h>

namespace fs = std::filesystem;

bool MyLocator::has_env(const std::string &name) const {
    return true;
}

const std::string MyLocator::get_env(const std::string &name) const {
    return home_;
}

const std::string MyLocator::layout_dir(location_ptr location, layout l) const {
    std::string dir = fmt::format("{}/{}/{}/{}/{}/{}",
        home_,
        get_category_name(location->category),
        location->group,
        location->name,
        get_layout_name(l),
        get_mode_name(location->mode));
    try {
        if (fs::create_directories(dir)) {
            std::cout << "Directory created successfully: " << dir << std::endl;
        } else {
            std::cout << "Directory already exists or cannot be created: " << dir << std::endl;
        }
    } catch (const fs::filesystem_error& e) {
        std::cerr << e.what() << std::endl;
    }
    return dir;
}

const std::string MyLocator::layout_file(location_ptr location, layout l, const std::string &name) const {
    return fmt::format("{}/{}.{}",
        layout_dir(location, l),
        name,
        get_layout_name(l));
}

const std::vector<int> MyLocator::list_page_id(location_ptr location, uint32_t dest_id) const {
    std::vector<int> v_;
    std::string target_dir = layout_dir(location, layout::JOURNAL);
    const std::regex JOURNAL_PATTERN_REGX(fmt::format("{:08x}.(\\d+).journal", dest_id));
    for (const auto&entry : fs::directory_iterator(target_dir)) {
        if (std::cmatch matches; std::regex_search(entry.path().filename().c_str(), matches, JOURNAL_PATTERN_REGX)) {
            v_.push_back(atoi(matches[1].first));
        }
    }
    return v_;
}

const std::string MyLocator::default_to_system_db(location_ptr location, const std::string &name) const {
    return home_;
}

