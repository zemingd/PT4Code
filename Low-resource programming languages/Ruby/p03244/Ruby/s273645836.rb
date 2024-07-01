#16
#1 2 4 6 3 5 6 7 2 1 1 2 3 4 4 5
ary=$stdin.readlines
odds=Array.new
evens=Array.new
for i in ary
  i.chomp!
end
n = ary[0].to_i
array=ary[1].split(" ")

for i in (0..n-1)
  array[i]=array[i].to_i
end
#p array
p=0
q=1
while p<n
  odds.push(array[p])
  evens.push(array[q])
  p+=2
  q+=2
end
#p "odd", odds
#p "evens", evens
num_i_odds=Hash.new
num_i_evens=Hash.new
num_odds=[]
num_evens=[]
for i in (0..array.max)
  num_i_odds[odds.count(i)] ||= Array.new
  num_i_evens[evens.count(i)] ||= Array.new
  num_i_odds[odds.count(i)].push(i)
  num_i_evens[evens.count(i)].push(i)
  num_odds=num_i_odds.keys
  num_evens=num_i_evens.keys
end
#p "num_i_odds",num_i_odds
#p "num_i_evens",num_i_evens
max_num_odds=num_odds.max
max_num_evens=num_evens.max
#p max_num_odds
#p max_num_evens
answer=0
answer+=odds.count{|i| i!=num_i_odds[max_num_odds][0]}
answer+=evens.count{|i| i!=num_i_evens[max_num_evens][0]}

combined = num_i_odds[max_num_odds] + num_i_evens[max_num_evens]
#p combined.uniq
if combined.uniq.count == 1
    answer=0
elm_num_odds=num_odds.reject{|i| i==max_num_odds}
elm_num_evens=num_evens.reject{|i| i==max_num_evens}

elm_max_num_odds=elm_num_odds.max_by{|i| !i== num_i_odds[max_num_odds]}
elm_max_num_evens=elm_num_evens.max_by{|i| !i== num_i_evens[max_num_evens]}

  if elm_max_num_odds >= elm_max_num_evens
    answer+=odds.count{|i| i!=num_i_odds[elm_max_num_odds][0]}
    answer+=evens.count{|i| i!=num_i_evens[max_num_evens][0]}
  elsif elm_max_num_odds < elm_max_num_evens
    answer+=odds.count{|i| i!=num_i_odds[max_num_odds][0]}
    answer+=evens.count{|i| i!=num_i_evens[elm_max_num_evens][0]}
  end
end
puts answer
