n, k = gets.split(' ').map(&:to_i)
l = gets.split(' ').map(&:to_i)

print l.sort.last(k).inject { |sum, n| sum + n }