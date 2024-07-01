h,a = gets.chomp.split.map(&:to_i)

i = 0
remain = h
while
  remain = remain - a
  i += 1
  if remain <= 0
    puts i
    exit
  end
end
