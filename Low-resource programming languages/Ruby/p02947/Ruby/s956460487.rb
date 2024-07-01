def factorial(n)
  return 1 if n == 1
  n * factorial(n - 1)
end
n = gets.to_i
str = []
n.times { str.append(gets.chars.sort.join) }

values = str.group_by{ |item| item }.values

values.reject { |v| v.length <= 1 }

puts values.map { |v| factorial(v.length) / 2 }.inject(&:+)