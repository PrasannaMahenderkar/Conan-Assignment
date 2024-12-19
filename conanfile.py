
####################################
# DO WRITE CODE BELOW THIS POINT
####################################

from conan import ConanFile
from conan.tools.cmake import CMakeToolchain, CMake, cmake_layout, CMakeDeps

class ApplicationRecipe(ConanFile):
    name = "application"
    version = "1.0"

    # Optional metadata
    license = "MIT"
    author = "Prasanna mahenderkerprasanna@gmail.com"
    description = "Application package"
    topics = ("graph", "clock", "Execution Time")

    # Binary configuration
    settings = "os", "compiler", "build_type", "arch"
    
    # Define the required dependencies (shared libraries)
    requires = [
        "graph/1.0",  # replace with actual shared library names and versions
        "clock/1.0",
    ]
    
    # Optionally, set the generator to "cmake" to work with CMake-based projects
    generators = "cmake", "cmake_find_package", "cmake_paths"

    
    # Sources are located in the same place as this recipe, copy them to the recipe
    exports_sources = "CMakeLists.txt", "*"

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
        cmake = CMake(self)
        cmake.install()