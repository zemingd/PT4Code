n = gets.to_i
numbers = gets.split(" ").map(&:to_i)

def gcd(n, m)

  n, m = m, n if m > n
  #p [n, m]

   loop {
    r = n % m
    break if r == 0
    n, m = m, r
  }
  m
end

answers = []
cut_numbers = []
numbers.each_with_index do |number, index|
  cut_numbers = numbers.dup
  cut_numbers.delete_at(index)
  answers.push(cut_numbers.inject{|a, b| gcd(a, b)})
end

puts answers.max