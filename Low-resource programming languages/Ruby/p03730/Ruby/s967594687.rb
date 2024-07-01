a,b,c= gets.split.map(&:to_i)
n = 0
100000.times {
  n += a
  if n % b == c
    puts 'YES'
    exit 0
  end
}
puts 'NO'