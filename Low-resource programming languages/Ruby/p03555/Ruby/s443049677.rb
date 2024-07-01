a=gets.chomp.split.map(&:to_i)
b=gets.chomp.split.map(&:to_i)
puts a[2]==b[0] && a[1]==b[1] && a[0]==b[0] ? "YES" : "NO"