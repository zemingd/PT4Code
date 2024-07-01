A,B = gets.chomp.split.map(&:to_i)
p = (A / 0.08).ceil
q = ((A + 1) / 0.08).floor
r = (B / 0.1).ceil
s = ((B + 1) / 0.1).floor

n = (p..q).to_a.sort
m = (r..s).to_a.sort

if (n & m).length > 0
  puts (n & m).shift
else
  puts "-1"
end