n = gets.chomp.to_i
ary1 = gets.chomp.split(" ").map(&:to_i)

def check_triangle(ary)
  a = ary[0]
  b = ary[1]
  c = ary[2]
  if (a<b+c) and (b<c+a) and (c<a+b)
    return 1
  else
    return 0
  end
end
result = 0
ary1.combination(3).each{|elem| result = result + 1 if check_triangle(elem)}
puts result