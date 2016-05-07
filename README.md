# TimeBench

## DateTimeFormatBench
```
Calendar.DateTime.Format.rfc3339                200000   7.76 µs/op
Timex.format!(@timex_iso_z, {ISOz})              10000   213.17 µs/op
```
## DateTimeParseBench
```
Calendar.DateTime.from_erl! @erl                100000   11.34 µs/op
Calendar.DateTime.Parse.rfc3339_utc @iso_z       50000   30.20 µs/op
Timex.DateTime.from @erl                         20000   78.80 µs/op
Timex.parse! @iso_z                              20000   86.77 µs/op
```
## EctoDumpBench
```
Ecto.DateTime.dump(@iso_z)                   100000000   0.08 µs/op
Calecto.DateTimeUTC.dump(@iso_z)              10000000   0.18 µs/op
Timex.Ecto.DateTime.dump(@iso_z)                 10000   117.86 µs/op
```
## EctoLoadBench
```
Calecto.DateTimeUTC.load(@erl)                10000000   0.13 µs/op
Ecto.DateTime.load(@erl)                      10000000   0.13 µs/op
Timex.Ecto.DateTime.load(@erl)                   20000   74.96 µs/op
```
## ErlToIsoZBench
```
custom                                        10000000   0.58 µs/op
Calendar                                        100000   18.56 µs/op
Timex                                            10000   280.32 µs/op
```

## How to run the benchmarks on your own machine
```
git clone https://github.com/benwilson512/time-bench.git
cd time-bench/
mix deps.get
mix bench
```
