ifeq "$(shell arch)" "arm"
export IPHONE_GCC = 1
SDK := /var/sdk
XSTUFF := --sysroot $(SDK) -F$(SDK)/System/Library/Frameworks -F$(SDK)/System/Library/PrivateFrameworks
GCC := gcc $(XSTUFF)
GXX := g++ $(XSTUFF)
else
SDK := /Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS3.2.sdk/
GCC := /Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/gcc-4.2 --sysroot $(SDK) -arch armv7 
GXX := /Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/g++-4.2 --sysroot $(SDK) -arch armv7 
endif
