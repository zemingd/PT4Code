n = gets.to_i
s = gets.split(" ").map!{|o| o.to_s}
frag = "Three"
0.upto(n-1) do |i|
  if s[i] == "G"
    frag = "Four"
  end
end
puts frag
