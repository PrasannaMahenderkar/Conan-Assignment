####################################
# DO WRITE CODE BELOW THIS POINT
####################################

from conan import ConanFile
from conan.tools.cmake import CMakeToolchain, CMake, cmake_layout, CMakeDeps

class clockRecipe(ConanFile):
    name = "clock"
    version = "1.0"

    # Optional metadata
    license = "MIT"
    author = "Prasanna mahenderkerprasanna@gmail.com"
    url = "<Package recipe repository url here, for issues about the package>"
    description = "clock package"
    topics = ("clock", "Execution Time")

    # Binary configuration
    settings = "os", "compiler", "build_type", "arch"
    generators = "cmake",  "cmake_find_package"

    
    # Sources are located in the same place as this recipe, copy them to the recipe
    exports_sources = "CMakeLists.txt", "src/*","include/*"

    def layout(self):
        cmake_layout(self)

    def generate(self):
        deps = CMakeDeps(self)
        deps.generate()
        tc = CMakeToolchain(self)
        tc.generate()

    def build(self):
        cmake = CMake(self)
        cmake.configure()
        cmake.build()

    def package(self):
        self.copy("*.h", dst="include", src="src")
        self.copy("*.lib", dst="lib", src="lib")
        self.copy("*.dll", dst="bin", src="bin")
        self.copy("*.so", dst="lib", src="lib")
        self.copy("*.dylib", dst="lib", src="lib")

    def package_info(self):
        self.cpp_info.libs = ["clock"]