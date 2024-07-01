h = Hash.new(0)
num = gets.to_i
st = gets.chomp!.split("")
st.each do |s|
  h[s] += 1
end
 

if h.keys.length == 3
  puts "Three"
elsif h.keys.length == 4
  puts "Four"
end
 