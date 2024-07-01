arr = gets.split.map(&:to_i).sort
k = gets.to_i

k.times do
  arr[-1] = arr[-1]*2
end

p arr.inject { |m, x| m + x }
