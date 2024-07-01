#ABC170C.rb
x,n = gets.split.map(&:to_i)
ar = gets.split.map(&:to_i)
ar_max = ar.max
if n == 0
  puts x
  exit
elsif x >= ar_max
  br = (1..x).to_a
else
  br = (1..ar_max).to_a
end

br.delete_if do |br2|
  ar.include?(br2)
end

min_diff = (x-br[0]).abs
min = br[0]
br[1..br.size].each do |br3|
  diff = (x-br3).abs
  if diff < min_diff
    min_diff = diff
    min = br3
  else
     break
  end
end

puts min

