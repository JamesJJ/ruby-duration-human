# duration-human

[![Gem Version](https://badge.fury.io/rb/duration-human.svg)](https://badge.fury.io/rb/duration-human)

Ruby module to entend Numeric class with a method to convert a number of seconds to a human readable time duration.

For example:

```
80.duration      ==> "80 seconds"
200.duration     ==> "3 minutes and 20 seconds"
4800.duration    ==> "80 minutes and 0 seconds"
9000.duration    ==> "2 hours and 30 minutes"
93660.duration   ==> "26 hours and 1 minutes"
349200.duration  ==> "4 days and 1 hours"
```

Setting `concise` to `true` in the method arguments will use initials `s`, `m`, `h`, `d` for the units, and omit the word `and`.

For example:

```
80.duration(concise: true)      ==> "80s"
200.duration(concise: true)     ==> "3m 20s"
93660.duration(concise: true)   ==> "26h 1m"
349200.duration (concise: true) ==> "4d 1h"
```

The thresholds for changing between seconds, minutes, hours and days is "2". For example, 80 is less than 2 minutes, so it is "80 seconds". 200 is more than 2 minutes, so it is "3 minutes and 20 seconds" instead of "200 seconds".
