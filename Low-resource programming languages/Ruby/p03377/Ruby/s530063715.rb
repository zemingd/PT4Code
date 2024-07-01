A,B,X = gets.chomp.split.map(&:to_i)

print "#{A+B>=X && X-A>=0 ? "YES" : "NO"}\n"