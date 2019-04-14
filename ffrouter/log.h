// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.

#ifndef LOG_H
#define LOG_H

#include <iostream>
#include <mutex>

#define LOG_LEVEL 2

static std::mutex lock;
#define LOG_MSG(tag, message) {lock.lock(); std::cout << tag << message << std::endl; lock.unlock();}

#define LOG_INFO(x)  {if ((LOG_LEVEL) <= 3) LOG_MSG("[INFO] ",  x);}
#define LOG_DEBUG(x) {if ((LOG_LEVEL) <= 2) LOG_MSG("[DEBUG] ", x);}
#define LOG_TRACE(x) {if ((LOG_LEVEL) <= 1) LOG_MSG("[TRACE] ", x);}
#define LOG_ERROR(x) {LOG_MSG("[ERROR] ", x);}

#endif /* LOG_H */
