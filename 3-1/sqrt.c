#include <stdio.h>
#include <strings.h>

/* [writeup](https://hackmd.io/@csotaku0926/linux2024-homework4) */
int i_sqrt(int x)
{
    if (x <= 1) /* Assume x is always positive */
        return x;

    int c = 0;
    for (int d = 1UL << ((31 - __builtin_clz(x)) & ~1UL); d; d >>= 2) {
        int y = c + d;
        c >>= 1;
        if (x >= y)
            x -= y, c += d;               
    }
    return c;
}

/* no GNU dependence */
int i_sqrt_ffs(int x)
{
    if (x <= 1) /* Assume x is always positive */
        return x;

    int tmp = x, msb = 0;
    while (tmp) {
        int i = ffs(tmp);
        tmp >>= i;
        msb += i;
    }
    msb--;

    int c = 0;
    for (int d = 1UL << (msb & ~1UL); d; d >>= 2) {
        int y = c + d;
        c >>= 1;
        if (x >= y)
            x -= y, c += d;               
    }
    return c;
}



int main()
{
    return 0;
}