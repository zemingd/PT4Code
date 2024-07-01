n = gets.to_i
a = gets.split.map(&:to_i)
ans = a.inject(:*)
mod = 10**18

if mod < ans
  puts -1
else
  puts ans
end