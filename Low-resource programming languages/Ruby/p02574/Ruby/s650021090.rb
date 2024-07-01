N = gets.to_i
A = gets.chomp.split(" ").map(&:to_i)

mx = A.max
sieve = Array.new(mx+1).map{[]}
(2..mx/2).each{|i|
  next if not sieve[i].empty?
  j=2*i
  while j <= mx do
    sieve[j] << i
    j += i
  end
}
prm = Hash.new{|h, k| h[k] = 0}
A.each{|a|
  next if a == 1
  sieve[a].empty? ? prm[a] += 1 : sieve[a].each{|i| prm[i] += 1}
}

if prm.all?{|k, v| v == 1} then
  puts 'pairwise coprime'
elsif prm.any?{|k, v| v == N} then
  puts 'not coprime'
else
  puts 'setwise coprime'
end
