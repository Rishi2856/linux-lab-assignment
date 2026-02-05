#include <stdio.h>
#include <signal.h>
#include <unistd.h>
#include <stdlib.h>

void handle_signal(int sig) {
    if (sig == SIGTERM) {
        printf("Parent received SIGTERM signal\n");
    } else if (sig == SIGINT) {
        printf("Parent received SIGINT signal\n");
    }
    exit(0);
}

int main() {
    signal(SIGTERM, handle_signal);
    signal(SIGINT, handle_signal);

    if (fork() == 0) {
        sleep(5);
        kill(getppid(), SIGTERM);
        exit(0);
    }

    if (fork() == 0) {
        sleep(10);
        kill(getppid(), SIGINT);
        exit(0);
    }

    while (1) {
        sleep(1);
    }

    return 0;
}
