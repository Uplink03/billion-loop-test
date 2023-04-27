#include <stdio.h>

int main()
{
    for (int i = 0; i < 1000 * 1000 * 1000; i++)
    {
        double j = i / 9.0;
        if (i % (100 * 1000 * 1000) == 0)
            printf("%f\n", j);
    }
    return 0;
}
