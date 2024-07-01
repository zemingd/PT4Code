x = gets.to_i
mod = x % 11

if mod == 0
  puts x / 11 * 2
else
  puts mod <= 5 ? x / 11 * 2 + 1 : x / 11 * 2 + 2
end