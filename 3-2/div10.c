#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

/* example division and reminder using bitwise without d0,d1,d2 */
void div10(uint32_t n, uint32_t *q, uint32_t *r)
{
    *q = ((n << 3) + (n << 2) + n) >> 7; /* n / (128/13) */
    *r = n - (((*q << 2) + *q) << 1);
}

void div10_naive(uint32_t n, uint32_t *q, uint32_t *r)
{
    *q = n / 10;
    *r = n % 10;
}

void divmod_10(uint32_t in, uint32_t *div, uint32_t *mod)
{
    /* div = in/10 ==> div = 0.75*in/8 */
    uint32_t x = (in | 1) - (in >> 2);   /* 0.75 * in */
    uint32_t q = (x >> 4) + x; /* q = x / (16 / 17) = in / (64 / 51) */
    
    x = q;
    q = (q >> 8) + x;
    q = (q >> 8) + x;
    q = (q >> 8) + x;
    q = (q >> 8) + x;

    *div = (q >> 3); /*  (64*8) / 51 = 10.03 */
    *mod = in - ((q & ~0x7) + (*div << 1));   
}

void _mod5(uint32_t in, uint32_t *mod)
{
    /* a mod 5 = ((3a/8) + a % 8) % 5 */
    while (in > 9) {
        int s = 0; /* accumulator for the sum of digits */
        while(in != 0) {
            s += (in & 7);
            in = (in >> 3) * 3;
        }
        in = s;
    }
    
    /* now in < 10 */
    if (in > 4) in -= 5;
    *mod = in;
}

/**
 *  we can fast calculate mod 15, so we can calculate a mod 5 by
 *  a mod 5 = (a mod 15) mod 5
 */
void mod5(uint32_t in, uint32_t *mod)
{
    in = (in >> 16) + (in & 0xFFFF); /* sum 2^16 = 65536 base digits */
    in = (in >> 8)  + (in & 0xFF);
    in = (in >> 4)  + (in & 0xF);

    /* now in < 32 */
    if (in > 14) in -= 15;
    if (in > 14) in -= 15;

    /* mod 15 */
    if (in > 9) in -= 10;
    else if (in > 4) in -= 5;
    *mod = in;
}

/**
 *  a mod 9 = (a mod 63) mod 9
 * 
*/
void mod9(uint32_t in, uint32_t *mod)
{
    in = (in >> 24) + (in & 0xFFFFFF); /* mod 2^24 - 1 */
    in = (in >> 12) + (in & 0xFFF);
    in = (in >> 6)  + (in & 0x3F);
    /* mod 63 */

    while (in > 8)
        in -= 9;
    *mod = in;
}

int main(void)
{
    /* Assume ASLR */
    srand((uintptr_t)&main);

    uint32_t r, q, n = (uint32_t)rand();
    div10(n, &q, &r);
    mod9(n, &r);
    printf("r: %u\n", r);
    printf("%d\n", ilog32(64));
}