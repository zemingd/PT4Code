abc = gets.split.map(&:to_i)
k = gets.to_i

puts abc.sort!.delete_at(-1) * 2**k + abc.inject(:+)
