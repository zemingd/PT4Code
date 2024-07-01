A, B = gets.split(' ').map(&:to_i)
str = gets.chomp.split('')
str.each.with_index(1) do |c,i|
  #puts "c: #{c}, i: #{i}"
  if i == A+1
    unless c == '-'
      puts 'No'
      exit
    end
  else
    unless c =~ /\d/
      puts 'No'
      exit
    end
  end
end
puts 'Yes'
