# aarch64 Common System Calls


    Exit (SYS_EXIT, 93) - Terminate the calling process.
    Write (SYS_WRITE, 64) - Write data to a file or device.
    Read (SYS_READ, 63) - Read data from a file or device.
    Open (SYS_OPEN, 56) - Open a file.
    Close (SYS_CLOSE, 57) - Close a file.
    Creat (SYS_CREAT, 62) - Create a file.
    Unlink (SYS_UNLINK, 87) - Remove a file.
    Chdir (SYS_CHDIR, 80) - Change the current working directory.
    Chmod (SYS_CHMOD, 90) - Change the access permissions of a file.
    Stat (SYS_STAT, 79) - Get information about a file.
    Fstat (SYS_FSTAT, 80) - Get information about an open file.
    Lseek (SYS_LSEEK, 62) - Change the file offset.
    Mmap (SYS_MMAP, 222) - Map or unmap files or devices into memory.
    Brk (SYS_BRK, 214) - Change the end of the data segment.
    Sigaction (SYS_RT_SIGACTION, 134) - Set or get the signal handler for a specific signal.
    Sigprocmask (SYS_RT_SIGPROCMASK, 135) - Change the signal mask.
    Sigreturn (SYS_RT_SIGRETURN, 139) - Return from a signal handler.
    Kill (SYS_KILL, 62) - Send a signal to a process.
    Getpid (SYS_GETPID, 172) - Get the process ID of the calling process.
    Getuid (SYS_GETUID, 174) - Get the user ID of the calling process.
