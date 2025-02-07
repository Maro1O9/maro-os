{ unpkgs, ... }:
{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with unpkgs; [
    llvmPackages.llvm     # Core LLVM tools (opt, llc, lli)
    llvmPackages.clang    # Clang compiler
    llvmPackages.clang-tools
    llvmPackages.lld      # Linker (LLD)
    llvmPackages.lldb     # Debugger (LLDB)
    llvmPackages.compiler-rt # Runtime libraries
    llvmPackages.libcxx   # C++ standard library
    llvmPackages.openmp   # OpenMP support
    gcc
    zig
    gnumake
    cmakeWithGui
    dotnetCorePackages.dotnet_8.sdk
    nixd
    nil
    curl
    go
    air
    rustup
    mold-wrapped
    deno
    openssl
    lazygit
    tmux
    exercism
    telegram-desktop
    papers
    discord
  ];

}
