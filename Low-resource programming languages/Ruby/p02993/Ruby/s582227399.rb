numbers = gets.chomp.split('').map(&:to_i)
ans = "Good"
pivod = ''
numbers.each do |s|
  ans = "Bad" if pivod == s
  pivod = s
end
puts ans