<?php
for ($i = 0; $i < 1000 * 1000 * 1000; $i++)
{
    $j = $i / 9.0;
    if ($i % (100 * 1000 * 1000) === 0)
        echo "$j\n";
}