s = gets.chomp
array = s.split('')
num = 0
array.each do |c|
  if c.eql?('+')
    num += 1
  else
    num -= 1
  end
end

puts num
