h, w = gets.chomp.split(' ').map(&:to_i)
array = []
h.times do
  array << gets.chomp.split('')
end

h.times do |i|
  w.times do |j|
    next if array[i][j] != ?#
    if ((i == 0) || (array[i-1][j] != ?#)) && ((i == h - 1) || (array[i+1][j] != ?#)) && ((j == 0) || (array[i][j-1] != ?#)) && ((j == w - 1) || (array[i][j+1] != ?#))
      puts 'No'
      exit
    end
  end
end

puts 'Yes'