#pragma once

namespace ABI47_0_0reanimated {

class LoggerInterface {
 public:
  virtual void log(const char *str) = 0;
  virtual void log(double d) = 0;
  virtual void log(int i) = 0;
  virtual void log(bool b) = 0;
  virtual ~LoggerInterface() {}
};

} // namespace reanimated
