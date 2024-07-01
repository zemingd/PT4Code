x, n = gets.split.map(&:to_i)
p = gets.split.map{|i| [i.to_i, true]}.to_h

if n == 0
  p x
  exit
end

(n+1).times do |i|
  if p[x - i].nil?
    p x - i
    exit
  elsif p[x + i].nil?
    p x + i
    exit
  end
end