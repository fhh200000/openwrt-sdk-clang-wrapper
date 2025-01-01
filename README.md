# openwrt-sdk-clang-wrapper
Windows batch wrapper file for OpenWRT SDK, to allow building via LLVM/Clang under Windows.  
## Requirement
+ OpenWrt SDK
+ Clang compiler on PATH
## Usage
Use the following command to generate links under `<OpenWRT SDK root>/bin`:
```cmd
  mklink target.cmd script.cmd
```
