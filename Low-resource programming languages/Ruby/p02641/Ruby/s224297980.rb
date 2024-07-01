x, n = gets.split.map(&:to_i)
ps = gets.split.map(&:to_i)

sorted_ps = ps.sort

answer = nil

(0..100).each do |num|
  break if answer

  if sorted_ps.bsearch { |y| y >= (x - num) } != x - num
    answer =  x - num
  elsif sorted_ps.bsearch { |y| y >= (x + num) } != x + num
    answer =  x + num
  end
end

puts answer
