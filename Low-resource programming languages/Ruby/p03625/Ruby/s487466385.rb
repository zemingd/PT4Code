long_and_wize = []
prev = nil

gets
A = gets.split.map(&:to_i).sort

A.reverse_each do |a|
  if prev && a == prev
    long_and_wize << a
    break if long_and_wize.size == 2

    prev = nil
  else
    prev = a
  end
end

if long_and_wize.size == 2
  puts long_and_wize.inject(&:*)
else
  puts 0
end
