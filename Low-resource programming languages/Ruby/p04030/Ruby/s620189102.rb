s = gets.chomp.split('')
list = []
s.map do |key|
  if key == '0' || key == '1'
    list << key
  else
    list.pop if list.length > 0
  end
end

puts list.join