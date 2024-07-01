n, x = gets.split.map(&:to_i)
coords = gets.split.map(&:to_i).sort
dists = coords.drop(1).zip(coords).map{|right, left| right - left}.sort.reverse

if n >= x
    puts 0
else
    puts dists.drop(n - 1).inject(:+)
end
