# TimeBench

## EctoDumpBench
```
Ecto.DateTime.dump(@iso_z)                   100000000   0.08 µs/op
Calecto.DateTimeUTC.dump(@iso_z)              10000000   0.19 µs/op
Timex.Ecto.DateTime.dump(@iso_z)                 10000   113.69 µs/op
```
## EctoLoadBench
```
Ecto.DateTime.load(@erl)                      10000000   0.13 µs/op
Calecto.DateTimeUTC.load(@erl)                10000000   0.14 µs/op
Timex.Ecto.DateTime.load(@erl)                   50000   74.27 µs/op
```

## DateTimeParseBench
```
Calendar.DateTime.from_erl! @erl                100000   11.24 µs/op
Calendar.DateTime.Parse.rfc3339_utc @iso_z      100000   29.11 µs/op
Timex.DateTime.from @erl                         20000   78.94 µs/op
Timex.parse! @iso_z                              20000   86.35 µs/op
```
