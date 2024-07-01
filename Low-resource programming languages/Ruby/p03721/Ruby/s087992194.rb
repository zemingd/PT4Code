n,k = gets.chomp.split(" ").map(&:to_i)
ab = n.times.map{gets.chomp.split(" ").map(&:to_i)}
ab.sort_by!{|arr|arr[0]}
if ab[0][1] >= k
  puts ab[0][0]
else
  for i in 1..n-1
    ab[i][1] += ab[i-1][1]
    if ab[i][1] >= k
      puts ab[i][0]
      exit
    end
  end
end