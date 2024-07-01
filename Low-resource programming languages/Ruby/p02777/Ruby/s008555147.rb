S,T = gets.strip.split.map(&:to_s)
A,B = gets.strip.split.map(&:to_i)
U = gets.strip.to_s

if U == S then
  puts "#{A-1} #{B}"
elsif U == T then
  print "#{A} #{B-1}"
else
  print "#{A} #{B}"
end
#空白入れて出力の時はこのように書く＃を使う。