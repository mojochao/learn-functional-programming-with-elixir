defmodule MatchstickFactory do

  def boxes(num_matchsticks) when is_integer(num_matchsticks) do
    _boxes(0, 0, 0, num_matchsticks)
  end

  @box_size %{big: 50, medium: 20, small: 5}

  defp _boxes(big, medium, small, remaining) when remaining >= @box_size.big do
    _boxes(big + 1, medium, small, remaining - @box_size.big)
  end
  defp _boxes(big, medium, small, remaining) when remaining >= @box_size.medium do
    _boxes(big, medium + 1, small, remaining - @box_size.medium)
  end
  defp _boxes(big, medium, small, remaining) when remaining >= @box_size.small do
    _boxes(big, medium, small + 1, remaining - @box_size.small)
  end
  defp _boxes(big, medium, small, remaining) do
    %{big: big, medium: medium, small: small, remaining: remaining}
  end

end
