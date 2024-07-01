n = gets.chars
n.map! do |i|
  if i === '9'
    i = '1'
  elsif i === '1'
    i = '9'
  end
end
puts n.join.to_i
