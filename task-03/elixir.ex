defmodule PrimeNumbers do
  def is_prime(num) when num <= 1, do: false
  def is_prime(2), do: true
  def is_prime(num) when rem(num, 2) == 0, do: false
  def is_prime(num) do
    is_prime(num, 3)
  end

  defp is_prime(num, divisor) when divisor * divisor > num, do: true
  defp is_prime(num, divisor) when rem(num, divisor) == 0, do: false
  defp is_prime(num, divisor) do
    is_prime(num, divisor + 2)
  end

  def run do
    IO.puts("Enter a positive integer (n):")
    case String.trim(IO.gets("")).to_integer() do
      {:ok, n} when n >= 2 ->
        IO.puts("Prime numbers up to #{n} are:")
        Enum.each(2..n, fn x -> if is_prime(x), do: IO.write("#{x} ") end)
        IO.puts("")

      _ ->
        IO.puts("Invalid input. Please enter a valid positive integer.")
    end
  end
end

PrimeNumbers.run()
