_ = gets
cities = gets.chomp.split(' ').map(&:to_i)
heros = gets.chomp.split(' ').map(&:to_i)

ans = 0

heros.length.times do |i|
  if heros[i] >= cities[i]
    heros[i] -= cities[i]
    ans += cities[i]
  else
    ans += heros[i]
    heros[i] = 0
  end
  
  next if heros[i].zero?
  next unless cities[i + 1]

  if heros[i] >= cities[i + 1]
    ans += cities[i + 1]
    cities[i + 1] = 0
  else
    ans += heros[i]
    cities[i + 1] -= heros[i]
  end
end

puts ans