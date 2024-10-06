#include <flutter/flutter_view_controller.h>
#include <flutter/method_channel.h>
#include <flutter/plugin_registry.h>
#include <iostream>

int main(int argc, char **argv) {
    // Create the Flutter application window
    FlutterViewController controller;
    controller.Run();
    return 0;
}
