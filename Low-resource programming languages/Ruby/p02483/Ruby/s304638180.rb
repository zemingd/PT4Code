num = gets.split.map(&:to_i)
num.sort!

for roop in 0 .. 2
  puts num[roop]
end