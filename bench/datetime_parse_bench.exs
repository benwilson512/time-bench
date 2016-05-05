defmodule DateTimeParseBench do
  use Benchfella

  setup_all do
    Application.ensure_all_started(:time_bench)
  end

  @erl {{2015, 11, 13}, {01, 02, 03}}
  @iso_z "2015-11-13T01:02:03Z"

  bench "Calendar.DateTime.Parse.rfc3339_utc @iso_z" do
    Calendar.DateTime.Parse.rfc3339_utc(@iso_z)
  end

  bench "Timex.parse! @iso_z" do
    Timex.parse!(@iso_z, "{ISOz}")
  end

  bench "Calendar.DateTime.from_erl! @erl" do
    Calendar.DateTime.from_erl!(@erl, "Etc/UTC")
  end

  bench "Timex.DateTime.from @erl" do
    Timex.DateTime.from(@erl, "Etc/UTC")
  end

end
