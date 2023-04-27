'use strict';
for (var i = 0; i < 1000 * 1000 * 1000; i++)
{
    var j = i / 9.0;
    if (i % (100 * 1000 * 1000) == 0)
        console.log(j);
}
