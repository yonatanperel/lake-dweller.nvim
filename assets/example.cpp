// Generic container with fixed capacity allocation
#include <iostream>
#include <vector>
#include <memory>
#include <string>

#define MAX_SIZE 1024
#define LOG(msg) std::cout << msg << std::endl

namespace config {

template<typename T>
class Container {
public:
    explicit Container(size_t capacity)
        : capacity_(capacity), size_(0) {
        data_ = std::make_unique<T[]>(capacity);
    }

    void push(const T& value) {
        if (size_ < capacity_) {
            data_[size_++] = value;
        }
    }

    T& operator[](size_t index) {
        return data_[index];
    }

    [[nodiscard]] size_t size() const noexcept {
        return size_;
    }

private:
    std::unique_ptr<T[]> data_;
    size_t capacity_;
    size_t size_;
};

struct Config {
    std::string name;
    int max_connections = 100;
    bool enabled = true;
};

}  // namespace config

enum class Status {
    Ok,
    Error,
    Pending
};

int main(int argc, char* argv[]) {
    auto container = config::Container<int>(MAX_SIZE);

    for (int i = 0; i < 10; ++i) {
        container.push(i * 2);
    }

    config::Config cfg{"server", 50, true};
    Status status = Status::Ok;

    if (status == Status::Ok && cfg.enabled) {
        LOG("Container size: " + std::to_string(container.size()));
    }

    return 0;
}
