N=gets.chomp.to_i
arr=gets.chomp.split(" ").map(&:to_i)
cum = []
sum=0
arr.each do |n|
  sum += n
  cum << sum
end

puts cum.map {|n| (cum[-1]-n-n).abs}.min