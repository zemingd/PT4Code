ary = gets.chomp.split()
a = ary[0].to_i
b = ary[1].to_i
c = ary[2].to_i

n = 0
for i in a..b
  if c%i == 0
    n += 1
  end
end

puts n