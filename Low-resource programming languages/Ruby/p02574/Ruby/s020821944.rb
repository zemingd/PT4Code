END { load __FILE__ unless $stdin.eof? }

n = gets.to_i
a = gets.split.map!(&:to_i).tally

a.delete(1)
no_pair = a.values.any? { |cnt| cnt >= 2 }
a = a.keys
dup_prime = a.size >= 78500

if !(no_pair || dup_prime)
  if a.combination(2).all? { |s, t| s.gcd(t) == 1 }
    puts "pairwise coprime"
    exit
  end
end

if a.inject(0, :gcd) == 1
  puts "setwise coprime"
else
  puts "not coprime"
end
