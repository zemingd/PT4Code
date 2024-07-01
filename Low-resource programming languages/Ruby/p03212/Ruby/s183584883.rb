N = gets.to_i
A = ['7', '5', '3']

def go(s)
  return 0 if s.to_i > N
  A.inject(A.all?{|a| s.include?(a)} ? 1 : 0){|r, c| r + go(s + c)}
end

puts go('')