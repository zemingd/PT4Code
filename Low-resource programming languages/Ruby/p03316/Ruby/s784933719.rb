n = gets.to_i

def s(n)
  n.to_s.chars.inject(0){|r,x| r + x.to_i}
end
puts n % s(n) == 0 ? 'Yes' : 'No' 
