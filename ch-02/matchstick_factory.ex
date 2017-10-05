defmodule MatchstickFactory do

  @big    50
  @medium 20
  @small   5

  def boxes(num_matchsticks), do: boxes_(0, 0, 0, num_matchsticks)

  defp boxes_(big, medium, small, remaining) when remaining >= @big,    do: boxes_(big + 1, medium, small, remaining - @big)
  defp boxes_(big, medium, small, remaining) when remaining >= @medium, do: boxes_(big, medium + 1, small, remaining - @medium)
  defp boxes_(big, medium, small, remaining) when remaining >= @small,  do: boxes_(big, medium, small + 1, remaining - @small
  defp boxes_(big, medium, small, remaining),                           do: %{big: big, medium: medium, small: small, remaining: remaining}

end
