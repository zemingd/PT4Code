N = gets.to_i
lst = gets.split(' ').map(&:to_i).uniq.sort

min = lst.min

if min == 1
  puts 1
  exit
end

loop do
  tmp_size = lst.min
  lst = lst.map do |i|
    if (i % min).zero?
      i
    else
      i % min
    end
  end.uniq.sort
  min = lst.min
  
  break if tmp_size == lst.min
end

puts lst[0]
