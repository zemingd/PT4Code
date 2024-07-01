h, w = gets.chomp.split(' ').map(&:to_i)
array = h.times.map{ gets.chomp.split('').map(&:to_s) }
output = array.dup

[h, w].max.times do
  output.each_with_index do |record, i|
    output.delete_at(i) if record.uniq == ['.']
  end

  output.transpose.each_with_index do |column, i|
    output.each{ |record| record.delete_at(i) } if column.uniq == ['.']
  end
end

output.each do |arr|
  puts arr.join
end