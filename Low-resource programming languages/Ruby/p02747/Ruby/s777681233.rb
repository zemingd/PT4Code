s = gets.chomp.split('')
# binding.pry
s.each_index do |i|
  if i.even?
    if s[i, 2].join('') != "hi"
      puts 'No'
      exit
    end
  end
end
puts 'Yes'