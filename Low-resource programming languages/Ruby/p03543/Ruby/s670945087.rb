gets
puts ((?0..?9).any?{|i|$_=~/#{i}{3}/} ? "Yes" : "No")
