#include <stdio.h>
#include <stdint.h>

/* example division and reminder using bitwise without d0,d1,d2 */
void div10()
{
    unsigned int q, r;
    for (int n = 0; n <= 19; n++) {
        q = ((n << 3) + (n << 2) + n) >> 7;
        r = n - (((q << 2) + q) << 1);
        printf("q: %d r: %d\n",  q, r);
    }
}


void divmod_10(uint32_t in, uint32_t *div, uint32_t *mod)
{
    uint32_t x = (in | 1) - (in >> 2); /* div = in/10 ==> div = 0.75*in/8 */
    uint32_t q = (x >> 4) + x;
    printf("x: %u, q: %u\n", x, q);
    x = q;
    q = (q >> 8) + x;
    q = (q >> 8) + x;
    q = (q >> 8) + x;
    q = (q >> 8) + x;

//     *div = (q >> CCCC);
//     *mod = in - ((q & ~0x7) + (*div << DDDD));   
}

int main(void)
{
    divmod_10(123, NULL, NULL);
}