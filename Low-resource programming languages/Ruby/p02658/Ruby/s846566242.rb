n = gets.to_i
ary = gets.split.map(&:to_i)

puts ary.inject(:*) <= 10 ** 18 ? ary.inject(:*) : -1