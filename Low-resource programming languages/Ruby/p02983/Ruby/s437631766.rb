L, R = gets.chomp.split(' ').map { |i| { scale: i.to_i/2019, mod: i.to_i%2019 } }

if L[:scale] == R[:scale]
    left = L[:mod]
    right = R[:mod]
    puts (left..right).to_a.combination(2).reduce(2019) {
        |min, numset| [min, numset[0]*numset[1]%2019].min
    }
else
    puts 0
end
