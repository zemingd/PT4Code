a,b,c=gets.chomp.split.map(&:to_s)
puts (a+b+c).to_s%4==0 ? "YES" : "NO"
