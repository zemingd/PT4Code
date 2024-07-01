n = gets.strip.to_i

def factor(n) 
  (1..n).select { |i| (n % i) == 0 }
end

puts 1.step(n, 2).select { |i| factor(i).size == 8 }.size
