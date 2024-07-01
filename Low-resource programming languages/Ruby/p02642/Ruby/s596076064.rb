n = gets.to_i
a = gets.split.map &:to_i

a.sort!.uniq!
if a.size == 1
  puts 0
  exit
end

primes = []
while true
  break if a.size.zero?
  del = []
  search = a.shift
  primes.push search
  search = primes.last
  a.each do |v|
    del << v if (v % search).zero?
  end
  a = a - del
end

puts (primes + a).count
