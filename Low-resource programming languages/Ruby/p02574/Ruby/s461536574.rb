_n = gets.to_i
a = gets.split.map(&:to_i)
max = a.max
sieve = Array.new(max + 1) { |i| i }
prime_division = Array.new(max + 1)

2.upto(Math.sqrt(max).to_i) do |i|
  (max / i).times do |j|
    sieve[i * (j + 1)] = i if i < sieve[i * (j + 1)]
  end
end

2.upto(max) do |i|
  h = Hash.new(0)
  j = i

  while j != 1
    h[sieve[j]] += 1
    j /= sieve[j]
  end

  prime_division[i] = h
end

h = {}
a.each do |e|
  next if e == 1

  prime_division[e].each_key do
    if h[_1]
      puts a.inject(:gcd) == 1 ? 'setwise coprime' : 'not coprime'
      exit
    end

    h[_1] = 1
  end
end

puts 'pairwise coprime'
