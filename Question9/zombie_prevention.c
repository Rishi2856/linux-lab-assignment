#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main() {
    pid_t pid;

    for (int i = 0; i < 3; i++) {
        pid = fork();

        if (pid == 0) {
            printf("Child process created with PID: %d\n", getpid());
            return 0;
        }
    }

    while ((pid = wait(NULL)) > 0) {
        printf("Parent cleaned child with PID: %d\n", pid);
    }

    return 0;
}
