a,v=gets.chomp.split(" ").map(&:to_i);
b,w=gets.chomp.split(" ").map(&:to_i);
t=gets.chomp.to_i

kyo = (a-b).to_f

if (v-w)*t >= kyo
  puts "YES"
else
  puts "NO"
end
