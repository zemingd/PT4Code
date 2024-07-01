long_and_wize = []
prev = nil

N = gets.to_i
A = gets.split.map(&:to_i).sort

A.reverse_each do |a|
  if prev
    if a == prev
      long_and_wize << a
      break if long_and_wize.size == 2
    end

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
