defmodule ErlToIsoZBench do
  use Benchfella

  @moduledoc """
  This bench mostly just exists for my own purposes. I needed to convert erl
  style tuples into ISOz formatted dates as fast as humanly possible, as this was
  part of a data ingestion process that needs to happen on millions of records at
  a time.

  Originally I was using Timex, and it was very slow. Calendar is much faster,
  but the custom function is obvously wildly faster still.
  """

  setup_all do
    Application.ensure_all_started(:time_bench)
  end

  @erl {{2015, 11, 13}, {01, 02, 03}}

  bench "Calendar" do
    @erl
    |> Calendar.DateTime.from_erl!("Etc/UTC")
    |> Calendar.DateTime.Format.rfc3339
  end

  bench "Timex" do
    @erl
    |> Timex.DateTime.from_erl("Etc/UTC")
    |> Timex.format!("{ISOz}")
  end

  bench "custom" do
    TimeBench.erl_to_isoz(@erl)
  end
end
