N = gets.chomp

[0, 3].each do |i|
  temp = N.dup

  temp[i] = ''

  if temp.chars.uniq.size == 1
    puts 'Yes'
    exit
  end
end

puts 'No'
