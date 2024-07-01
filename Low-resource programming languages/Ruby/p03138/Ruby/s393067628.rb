n, k = gets.strip.split.map(&:to_i)
a = gets.strip.split.map(&:to_i)

max = a.max
max_digits = max.to_s(2).length+1

transposed = a.map {|num| ('0'*max_digits + num.to_s(2))[-1*max_digits..-1] }.map {|l| l.split('').map(&:to_i) }.transpose
result = transposed.map {|l| l.inject(:+)/l.length.to_f >= 0.5 ? 0 : 1 }

current = result.join.to_i(2)

until current <= k
  result.shift
  current = result.join.to_i(2)
#  p current
end

p a.map {|e| e^current }.inject(:+)

