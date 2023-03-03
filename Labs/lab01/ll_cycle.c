#include <stddef.h>
#include "ll_cycle.h"

int ll_has_cycle(node *head) {
    /* your code here */

    node *tor = head;
    node *hare = head;

    do {
        if (hare == NULL || tor == NULL) return 0;
        tor = tor->next;
        hare = hare->next;
        if (hare) {
            hare = hare->next;
        }
    } while (hare == NULL || tor != hare);

    return 1;
}