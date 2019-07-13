defmodule FizzBuzz do
  @moduledoc """
  Documentation for FizzBuzz.
  """

  @doc """
  Hello world.

  ## Examples

      iex> FizzBuzz.hello()
      :world

  """
  
  # Phase 1: make the test pass.
  # def fizzbuzz(start, finish) do
  #   num_range = start..finish
  #   num_list = Enum.to_list(num_range)
  # 
  #   Enum.map(num_list, fn(num) -> 
  #     cond do
  #       rem(num, 5) == 0 && rem(num, 3) == 0 -> "FizzBuzz"
  #       rem(num, 5) == 0 -> "Buzz"
  #       rem(num, 3) == 0 -> "Fizz"
  #       true -> num
  #     end
  #   end)
  # end
  
  # Phase 2: switch to recursion
#   def fizzbuzz(start, finish) when start > finish do
#     []
#   end
# 
#   def fizzbuzz(start, finish) do
#     [ check_num(start) | fizzbuzz(start + 1, finish) ]
#   end
# 
#   def check_num(num) do
#     cond do
#       rem(num, 5) == 0 && rem(num, 3) == 0 -> "FizzBuzz"
#       rem(num, 5) == 0 -> "Buzz"
#       rem(num, 3) == 0 -> "Fizz"
#       true -> num
#     end
#   end
# end

  # Phase 3: Implement the fizz/buzz check as a pattern match
  def fizzbuzz(start, finish) when start > finish do
    []
  end

  def fizzbuzz(start, finish) do
    [ fizz_or_buzz(start) | fizzbuzz(start + 1, finish) ]
  end
  
  def fizz_or_buzz(num), do: check_num({num, rem(num, 5), rem(num, 3)})
  
  def check_num({_, 0, 0}), do: "FizzBuzz"
  
  def check_num({_, 0, _}), do: "Buzz"

  def check_num({_, _, 0}), do: "Fizz"

  def check_num({num, _, _}), do: num
end

# Want to build a list, checking the finish number each time and adding the result of the cond statement to the list
