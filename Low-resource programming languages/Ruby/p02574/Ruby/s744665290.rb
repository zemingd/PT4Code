END { load __FILE__ unless $stdin.eof? }

n = gets.to_i
a = gets.split.map!(&:to_i).tally

a.delete(1)

if a.values.any? { |cnt| cnt >= 2 }
  puts "not coprime"
  exit
end

a = a.keys

all_prod = (a.size >= 78500) ? 0 : a.inject(1, :*)

if a.all? { |ai| ai.gcd(all_prod / ai) == 1 }
  puts "pairwise coprime"
elsif a.inject(0, :gcd) == 1
  puts "setwise coprime"
else
  puts "not coprime"
end
