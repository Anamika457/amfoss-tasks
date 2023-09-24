#!/usr/bin/env ruby
def is_prime(num)
    return false if num <= 1
  
    (2..Math.sqrt(num).to_i).each do |i|
      return false if num % i == 0
    end
  
    true
  end
  
  puts "Enter a number : "
  n = gets.chomp.to_i
  
  if n < 2
    puts "No prime numbers"
  else
    
    (2..n).each do |i|
      puts i if is_prime(i)
    end
  end
  
