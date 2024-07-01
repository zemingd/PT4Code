a,b,c=gets.chomp.split.map(&:to_i)
puts (1..b).find{|count| a*count % b == c} ? "YES" : "NO"