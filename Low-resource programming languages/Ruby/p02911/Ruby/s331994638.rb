N,K,Q = gets.split.map(&:to_i)
a = Array.new(N,K-Q)
Q.times { a[gets.to_i-1]+=1 }
a.each {|i| puts i>0 ? 'Yes' : 'No'}