class Array
  def cumsum; s = 0; map{|k| s += k } end
end

n, m = gets.to_s.split.map{|t|t.to_i}
a = Array.new(n){ gets.to_s.to_i }

if n == 1
  puts 1
  exit
end

broken = Array.new(n+1){false}
stairs = Array.new(n+1){ 0 }
stairs[0] = stairs[1] = 1

a.each do |k|
  broken[k] = true
end

stairs[1] = 0 if broken[1]

2.upto(n) do |i|
  next if broken[i]
  stairs[i] = stairs[i-1] + stairs[i-2]
end

puts stairs[-1] % (10**9+7)