require "prime"

a, b = $stdin.readline.chomp.split(' ').map(&:to_i)

gcd = a.gcd(b)

cds = []

(2..gcd).each do |i|
  if a.remainder(i).zero? && b.remainder(i).zero?
    cds.push(i)
  end
end

puts cds.count { |e| Prime.prime?(e) }
