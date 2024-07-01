N = gets.to_i
A = gets.split.map(&:to_i)

num = 1
ans = 0
A.each{|x|
  if x == num 
    num = num + 1
  else 
    ans = ans + 1
  end

  if ans == A.length
    ans = -1
  end
}

puts ans