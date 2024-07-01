n = gets.chomp.to_i
a = gets.split.map(&:to_i).sort
count = 0
loop do
  maxeven = a.select { |e| e % 2 == 0}.max
  if maxeven.nil?
    puts count
    exit
  end
  count += 1
  ind = a.find_index { |e| e == maxeven }
  new_a = a.map { |e| e * 3 }
  new_a[ind] /= 6
  a = new_a.sort
end
