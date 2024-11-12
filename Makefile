CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VulkanRelease: main.cpp
		g++ $(CFLAGS) -DNDEBUG -o VulkanRelease main.cpp $(LDFLAGS)

VulkanDebug:
		g++ $(CFLAGS) -o VulkanDebug main.cpp $(LDFLAGS)

.PHONY: release debug clean

release: VulkanRelease
		./VulkanRelease

debug: VulkanDebug
		./VulkanDebug

clean:
		rm -f VulkanRelease VulkanDebug
