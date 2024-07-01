N = gets.chomp.to_i

hash = {}

N.times do
  s = gets.chomp
  if hash[s].nil?
    hash[s] = 1
  else
    hash[s] += 1
  end
end

max = hash.max { |a, b| a[1] <=> b[1] }[1]
puts hash.select { |k, v| v == max}.keys.sort

