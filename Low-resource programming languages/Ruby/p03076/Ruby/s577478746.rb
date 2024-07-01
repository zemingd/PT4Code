a = Array.new
5.times{
  a << gets.to_i
}
max = 0
i_p = 0
a.each_with_index do |i, index|
  n = 10 - i.to_s[-1].to_i
  if n == 10
    n = 0
  end
  if n > max
    max = n
    i_p = index
  end
end

def get_10_upper(i)
  if i % 10 == 0
    return i
  end
  return (i / 10 + 1) * 10
end

sum = 0
a.each_with_index do |i, index|
  if  index == i_p
    sum = sum + i
  else
    sum = sum + get_10_upper(i)
  end
end
puts sum
