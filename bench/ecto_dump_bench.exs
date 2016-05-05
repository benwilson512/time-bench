defmodule EctoDumpBench do
  use Benchfella

  Application.ensure_all_started(:tzdata)

  setup_all do
    Application.ensure_all_started(:time_bench)
  end

  @calendar_iso_z Calendar.DateTime.now_utc
  @timex_iso_z Timex.DateTime.now("Etc/UTC")

  @ecto_now Ecto.DateTime.utc

  ## Casting

  bench "Calecto.DateTimeUTC.dump(@iso_z)" do
    Calecto.DateTimeUTC.dump(@calendar_iso_z)
  end

  bench "Timex.Ecto.DateTime.dump(@iso_z)" do
    Timex.Ecto.DateTime.dump(@timex_iso_z)
  end

  bench "Ecto.DateTime.dump(@iso_z)" do
    Ecto.DateTime.dump(@ecto_now)
  end
end
