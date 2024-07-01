n,k,q = gets.split.map(&:to_i)
a = [0]*n
q.times {a[gets.to_i-1]+=1}
n.times {|i| puts a[i]>q-k ? "Yes":"No"}