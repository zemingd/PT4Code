n = gets.to_i
as = gets.split.map(&:to_i)

hash = {}

as.each do |a|
  if hash.include?(a)
    hash[a] += 1
  else
    hash[a] = 1
  end
end

if hash[0] == n
  puts 'Yes'
  exit
end

if hash.size == 3
  x, y, z = hash.to_a

  if x[1] == y[1] && y[1] == z[1] && x[0] == y[0] ^ z[0]
    puts 'Yes'
    exit
  end
end

if hash.size == 2
  x, y = hash.to_a

  if x[0] == 0 && x[1] * 2 == y[1]
    puts 'Yes'
    exit
  end

  if y[0] == 0 && y[1] * 2 == x[1]
    puts 'Yes'
    exit
  end
end

puts 'No'
