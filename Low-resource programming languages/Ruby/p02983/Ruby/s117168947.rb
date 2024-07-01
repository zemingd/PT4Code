l, r = gets.split.map(&:to_i)

if r-l >= 2019
  puts 0
else
  puts (l..r).to_a.combination(2).map {|n| n.inject(:*) % 2019}.min
end