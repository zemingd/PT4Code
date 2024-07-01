n,k=gets.split.map(&:to_i)
arr=[]
diff=[]
n.times { arr << gets.to_i }
arr.sort!
arr.each_cons(k).map{|a, b, c| diff << (c - a).abs }
puts diff.min