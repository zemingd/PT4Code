n,k = gets.chomp.split(" ")
s = gets.chomp.split("")
flag = s[0]
range = 0
max_size = 0
mono = []
zero = []
if flag == "0"
mono.push(0)
end

for i in s
  if flag == i
    range += 1
  else
    mono.push(range)
    if flag == "0"
      zero.push(range)
    end
    flag = i
    range = 1
  end
end
if flag == "0"
mono.push(0)
end
mono.push(range)

####
if k.to_i >= zero.length-1
puts mono.inject(:+)
else

ppl_size= k.to_i*2 + 1
step_size = mono.length - ppl_size + 1
step_size.times do |i|
  selected = mono[(i)..(i+ppl_size-1)]
#  print(selected, " ", i, " ",i+ppl_size-1,"\n")
  tmp_size = selected.inject(:+)
  if max_size < tmp_size
    max_size = tmp_size
  end
end
puts max_size
end