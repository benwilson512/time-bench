defmodule EctoLoadBench do
  use Benchfella

  setup_all do
    Application.ensure_all_started(:time_bench)
  end

  @erl {{2015, 11, 13}, {01, 02, 03, 0}}
  ## Loading

  bench "Ecto.DateTime.load(@erl)" do
    Ecto.DateTime.load(@erl)
  end

  bench "Calecto.DateTimeUTC.load(@erl)" do
    Calecto.DateTimeUTC.load(@erl)
  end

  bench "Timex.Ecto.DateTime.load(@erl)" do
    Timex.Ecto.DateTime.load(@erl)
  end
end
