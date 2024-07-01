_, x = gets.split.map(&:to_i)
cities = gets.split.map(&:to_i).push(x).sort

loop do
  cities = (cities.size-1).times.map { |i| cities[i+1] - cities[i] }.sort.uniq

  break if cities.size == 1

  if cities.include?(1)
    cities = [1]
    break
  end
end

puts cities[0]