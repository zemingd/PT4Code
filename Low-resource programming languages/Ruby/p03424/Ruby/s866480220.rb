n=gets.to_i
s=gets.chomp.split
h=Hash.new{0}

n.times do |i|
  h[s[i]]+=1
end
puts h.size==3 ? "Three" : "Four"