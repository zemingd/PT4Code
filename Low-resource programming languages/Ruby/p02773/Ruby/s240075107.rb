N = gets.chomp.to_i

S = []

N.times do 
  S << gets.chomp
end

memo = {}

S.each do |s|
  if !memo[s] then
    memo[s] = 0
  end
  memo[s] += 1
end

list = memo.sort{|a, b| b[1] <=> a[1]}
list = list.select{|a| a[1] == list[0][1]}

out = ""
out = list.each.map{|a| a[0]}.sort().join("\n")

puts out