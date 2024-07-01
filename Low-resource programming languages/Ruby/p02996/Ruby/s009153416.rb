n=gets.to_i
ab= n.times.map { gets.split.map(&:to_i) }
ab_sort = ab.sort_by{|a,b| b}
ab_sum = []
n.times do |i|
  if i == 0
    sum = ab_sort[0][0]
    if sum > ab_sort[i][1]
      puts "No"
      exit 0
    else
      ab_sum << sum
    end
  else
    sum = ab_sum[i-1] + ab_sort[i][0]
    if sum > ab_sort[i][1]
      puts "No"
      exit 0
    else
      ab_sum << sum
    end
  end
end
puts "Yes"