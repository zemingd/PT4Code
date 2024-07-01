N = gets.chomp.to_i
h = gets.chomp.split(" ").map(&:to_i)

umi = 1
hmax = h[0]

(1..N-1).each do |i|
  if hmax <= h[i]
    umi += 1
    hmax = h[i]
  end
end

puts umi