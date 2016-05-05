defmodule DateTimeFormatBench do
  use Benchfella

  Application.ensure_all_started(:tzdata)

  setup_all do
    Application.ensure_all_started(:time_bench)
  end

  @calendar_time Calendar.DateTime.now_utc
  @timex_iso_z Timex.DateTime.now("Etc/UTC")

  bench "Calendar.DateTime.Format.rfc3339" do
    Calendar.DateTime.Format.rfc3339(@calendar_time)
  end

  bench "Timex.format!(@timex_iso_z, {ISOz})" do
    Timex.format!(@timex_iso_z, "{ISOz}")
  end
end
