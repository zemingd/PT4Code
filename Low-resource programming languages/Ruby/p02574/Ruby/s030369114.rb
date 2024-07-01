n = gets.to_i
as = gets.split(' ').map(&:to_i)

pairwise = true

lcm = 1
as.each do |a|
  if lcm.gcd(a) != 1
    pairwise = false
  end
  lcm = lcm.lcm(a)
end

if pairwise
  puts 'pairwise coprime'
  exit
end

as.each do |a|
  if lcm / lcm.gcd(a) == 1
    puts 'not coprime'
    exit
  end
end

puts 'setwise coprime'
