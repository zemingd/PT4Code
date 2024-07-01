n = gets.to_i
a = gets.chomp.split(/\s/).map { |e| e.to_i }

sum = 0
max = (10 ** 9 + 7)

0.upto(n-1) { |i|
  (i+1).upto(n-1) { |j|
    sum += (a[i] ^ a[j])
    if sum > max
      sum = sum % max
    end
  }
}

puts sum
