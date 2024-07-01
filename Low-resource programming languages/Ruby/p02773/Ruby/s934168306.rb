n = gets.to_i
polls = {}
n.times do
  str = gets.chomp
  if polls[str]
    polls[str] += 1
  else
    polls[str] = 1
  end
end

polls = polls.sort {|(k1, v1), (k2, v2)| v2 <=> v1}
biggest = polls[0][1]
ans = []
polls.each do |key, value|
  if value == biggest
    ans << key
  else
    break
  end
end

puts ans.uniq.sort