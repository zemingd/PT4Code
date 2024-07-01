N, K = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
hash = Hash.new(0)
as.each do |a|
    hash[a] += 1
end

values = hash.values.sort
if values.length <= K
    puts 0
else
    puts values[0, values.length-K].inject(:+)
end