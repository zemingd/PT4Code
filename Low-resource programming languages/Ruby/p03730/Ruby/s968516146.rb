a,b,c = gets.split.map(&:to_i)
d = []
n = 0

loop do
  n += a
  amari = n % b
  if amari == c
    puts 'YES'
    break
  elsif !d[amari]
    d[amari] = amari
  else
    puts 'NO'
    break
  end
end
