a,v=gets.chomp.split(" ").map(&:to_i);
b,w=gets.chomp.split(" ").map(&:to_i);
t=gets.chomp.to_i

kyo = (a-b).to_f
sahay = v-w.to_f

if sahay > 0 
  jikan = kyo/sahay
  if jikan <= t
    puts "YES"
  	exit
  end
end
puts "NO"