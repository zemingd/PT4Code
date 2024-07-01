n = gets.to_i
ans = gets.split.map(&:to_i).inject(:*)

if ans > 10**18
  puts -1
else
  puts ans
end
