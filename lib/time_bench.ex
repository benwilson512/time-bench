defmodule TimeBench do
  def erl_to_isoz({{y, mon, d}, {h, min, s}}) do
    y   = Integer.to_string(y)   |> zero_pad
    mon = Integer.to_string(mon) |> zero_pad
    d   = Integer.to_string(d)   |> zero_pad

    h   = Integer.to_string(h)   |> zero_pad
    min = Integer.to_string(min) |> zero_pad
    s   = Integer.to_string(s)   |> zero_pad

    dash = ?-
    colon = ?:
    [y, dash, mon, dash, d, ?T, h, colon, min, colon, s , ".0", "Z",]
    |> IO.iodata_to_binary
  end

  defp zero_pad(<<_>> = val), do: [?0, val]
  defp zero_pad(val), do: val
end
