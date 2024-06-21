find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Core)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

set(qtlog_INCLUDES ${CMAKE_CURRENT_LIST_DIR}/../)

add_library(qtlog STATIC
    ${CMAKE_CURRENT_LIST_DIR}/log.h
)

target_link_libraries(qtlog 
    Qt${QT_VERSION_MAJOR}::Core
)
target_link_directories(qtlog PUBLIC ${qtlog_INCLUDES})