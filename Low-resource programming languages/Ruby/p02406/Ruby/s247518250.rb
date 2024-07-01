def NumChar(n)
  while n > 0
    return true if n%10 == 3
    n /= 10
  end
  false
end

n = gets.to_i
n.times { |i|
  print " #{i+1}" if (i+1)%3 == 0 or NumChar(i+1)
}
puts