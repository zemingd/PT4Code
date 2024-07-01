h, w = gets.chomp.split(' ').map(&:to_i)
list = h.times.map { gets.chomp.chars }

after_h = list.reject do |line|
  line.all? { |c| c == '.' }
end
i_list = 0.upto(w - 1).reject do |i|
  after_h.all? { |line| line[i] == '.' }
end

after_h.each do |line|
  row = i_list.map { |i| line[i] }.join
  puts row
end

