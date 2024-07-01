_n, num = gets.chomp.split.map(&:to_i)
data = gets.chomp.split.map(&:to_i)

tar = data.sort.reverse.slice(0...num)
puts tar.inject(:+)