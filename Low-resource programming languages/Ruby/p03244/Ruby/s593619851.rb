#16
#1 2 4 6 3 5 6 7 2 1 1 2 3 4 4 5
array=$stdin.readlines
odds=Array.new
evens=Array.new
for i in array
  i.chomp!
end
n = array[0].to_i
strings=array[1]
p n
array=strings.split(" ")

for i in (0..n-1)
  array[i]=array[i].to_i
end
#p array
i=0
j=1
while i<n
  odds.push(array[i])
  evens.push(array[j])
  i+=2
  j+=2
end
#p odds
#p evens
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
  num_evens=num_i_odds.keys
end
#p num_i_odds
#p num_i_evens
max_num_odds=num_odds.max
max_num_evens=num_evens.max

answer=0
answer+=odds.count{|i| i!=num_i_odds[max_num_odds][0]}
answer+=evens.count{|i| i!=num_i_evens[max_num_evens][0]}

combined = num_i_odds[max_num_odds] + num_i_evens[max_num_evens]
#p combined
#p combined.uniq
if combined.uniq.count == 1
    answer=0
elm_num_odds=num_odds.reject{|i| i==max_num_odds}
elm_num_evens=num_evens.reject{|i| i==max_num_evens}

elm_max_num_odds=elm_num_odds.max
elm_max_num_evens=elm_num_evens.max

  if elm_max_num_odds >= elm_max_num_evens
    answer+=odds.count{|i| i!=num_i_odds[elm_max_num_odds][0]}
    answer+=evens.count{|i| i!=num_i_evens[max_num_evens][0]}
  elsif elm_max_num_odds < elm_max_num_evens
    answer+=odds.count{|i| i!=num_i_odds[max_num_odds][0]}
    answer+=evens.count{|i| i!=num_i_evens[elm_max_num_evens][0]}
  end
end
puts answer