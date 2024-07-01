# abc060 B
a, b, c = gets.split.map(&:to_i)

# aの倍数をbで割ったあまりがc

((a..(a*100)) % a).to_a.each do |s|
  if s % b == c
    puts 'YES'
    exit
  end
end
puts 'NO'


