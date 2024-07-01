str = $<.gets.chomp.split('')

ret = {A: [], Z: []}
str.each_with_index do |v, i|
  ret[:A] << i if v == 'A'
  ret[:Z] << i if v == 'Z'
end
puts "#{ret[:Z][-1] - ret[:A].first + 1}"