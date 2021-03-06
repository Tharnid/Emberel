defmodule GuessingGame do
  @moduledoc """

  guess between a low number and high number...guess middle...tell user our guess....
  if user says yes game over...bigger handle bigger (high, low) and smaller function (high, low)

  div 51, 2

  """

  def guess(a, b) when a > b do # match when a is greater than b
    guess(b, a)
  end

  # def guess(a, b) when a > b, do: guess(b, a)

  def guess(low, high) do
    # IO.puts "Hmmm...maybe your thinking of #{mid(low, high)}?\n"
    answer = IO.gets "Hmmm...maybe your thinking of #{mid(low, high)}?\n"
    case String.trim(answer) do
      "bigger" -> bigger(low, high)
      "smaller" -> smaller(low, high)
      "yes" -> "I knew I could guess your number!!!"
    end
    # IO.puts high
    # IO.puts(mid(low, high))
  end

  def mid(low, high) do
    div low + high, 2
  end

  def bigger(low, high) do
    new_low = min(high, mid(low, high) + 1)
    guess(new_low, high)
  end

  def smaller(low, high) do
    new_high = max(low, mid(low, high) - 1)
    guess(low, new_high)
  end

end
