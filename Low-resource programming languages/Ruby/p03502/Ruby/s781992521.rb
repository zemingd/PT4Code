n = gets.to_i

def harshad(x)
  result = 0
  x.to_s.each_char do |c|
    result += c.to_i
  end
  result
end

puts n % harshad(n) == 0 ? 'Yes' : 'No'
