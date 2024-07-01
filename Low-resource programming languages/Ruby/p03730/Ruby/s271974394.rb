a,b,c=gets.split.map(&:to_i)
p = 1
rs = []
loop do
  r = (a * p) % b
  if r == c
    puts 'YES'
    exit
  end
  if rs.include?(r)
    puts 'NO'
    exit
  end
  rs.push(r)
  p += 1
end
