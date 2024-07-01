n,k,q=gets.chomp.split.map(&:to_i)
a = Array.new(n,k-q)
n.times{ 
  a[gets.to_i-1] += 1
}
a.map{|i| i<=0 ? (puts "No") : (puts "Yes")}
