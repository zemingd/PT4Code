h, w = gets.split(' ').map(&:to_i)
s = []
h.times do 
  s.push(gets.chomp.split(''))
end
h.times do |row|
  w.times do |col|
    if s[row][col] == '#'
      if row - 1 >= 0 && s[row-1][col] == '#'
        next
      end
      if row + 1 < h && s[row+1][col] == '#'
        next
      end
      if col - 1 >= 0 && s[row][col-1] == '#'
        next
      end
      if col + 1 < w && s[row][col+1] == '#'
        next
      end
    else
      next
    end
    puts 'No'
    exit
  end
end
puts 'Yes'
exit