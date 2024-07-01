n = gets.to_i
vs = gets.split.map(&:to_i)

evens = {}
odds = {}
0.upto(n-1) do |i|
  v = vs[i]
  # puts "vs[#{i}] = #{v}"
  if i % 2 == 0
    evens[v] = (evens[v] || 0) + 1
  else
    odds[v] = (odds[v] || 0) + 1
  end
end

evens = evens.map{|num,count| [num, count]}.sort_by{|arr| arr[1]*-1 }
odds = odds.map{|num,count| [num, count]}.sort_by{|arr| arr[1]*-1 }

# puts evens.to_s
# puts odds.to_s

if evens[0][0] != odds[0][0]
  evens_already = evens[0][1]
  odds_already = odds[0][1]
else
  evens_next_diff = evens[0][1] - (evens[1] || [0,0])[1]
  odds_next_diff = odds[0][1] - (odds[1] || [0,0])[1]
  # puts [evens_next_diff, odds_next_diff].to_s
  if evens_next_diff > odds_next_diff
    evens_already = evens[0][1]
    odds_already = odds[0][1] - odds_next_diff
  else
    evens_already = evens[0][1] - evens_next_diff
    odds_already = odds[0][1]
  end
end
# puts "[#{evens_already}, #{odds_already}]"
puts n - (evens_already + odds_already)
