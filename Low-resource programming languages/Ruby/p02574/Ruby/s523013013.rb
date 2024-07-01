END { load __FILE__ unless $stdin.eof? }

require 'prime'

n = gets.to_i
a = gets.split.map!(&:to_i)
b = a.dup

result = true
while b.size > 1
  b = b.each_slice(2).map do |s, t|
    t ||= 1
    break if s.gcd(t) != 1
    s * t
  end

  unless b
    result = false
    break
  end
end

if result
  puts "pairwise coprime"
elsif a.inject(0, :gcd) == 1
  puts "setwise coprime"
else
  puts "not coprime"
end
