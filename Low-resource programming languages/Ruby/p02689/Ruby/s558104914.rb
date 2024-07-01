# Your code here!
n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
all = Array.new(n,0)
p all
m.times do 
    a, b = gets.split.map(&:to_i)
    if h[a-1] > h[b-1]
        all[b-1] += 1
    elsif h[a-1] == h[b-1]
        all[a-1] += 1
        all[b-1] += 1
    else 
        all[a-1] += 1
    end
end
  goukei = 0
all.each do |i|
    if i == 0
          goukei += 1
    end
end

puts goukei