N = gets.chomp.to_i
D = gets.chomp.split(" ").map(&:to_i)

if D[0] != 0 || D[1..-1].include?(0) then
  puts "0"
  return
end

ranks = []
(1..Float::INFINITY).lazy.each do |i|
  r = D.count {|n| n == i}
  break if r == 0
  ranks << r
end

def factorial(number)
  (1..number).inject(1,:*)
end

def C(n, r)
  return factorial(n) / (factorial(n) / factorial(n - r))
end

s = 1
ranks.each do |r|
  (0..r).each do |n|
    s *= C(r, n)
  end
end

puts s