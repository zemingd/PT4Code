N = gets.to_i
v = gets.split.map(&:to_i)
odd = Hash.new(0)
div = Hash.new(0)

for i in 0..(N-1)
  if i % 2 == 0
    odd[v[i]] += 1
  else
    div[v[i]] += 1
  end
end

odds = Array.new(2, 0)
oddk = Array.new(2)
odd.each do |k, v|
  if odds[1] < v
    oddk[1] = k
    odds[1] = v
  end
  if odds[0] < odds[1]
    tmp = oddk[1]
    oddk[1] = oddk[0]
    oddk[0] = tmp
    tmp = odds[1]
    odds[1] = odds[0]
    odds[0] = tmp
  end
end

divs = Array.new(2, 0)
divk = Array.new(2)
div.each do |k, v|
  if divs[1] < v
    divk[1] = k
    divs[1] = v
  end
  if divs[0] < divs[1]
    tmp = divk[1]
    divk[1] = divk[0]
   divk[0] = tmp
    tmp = divs[1]
    divs[1] = divs[0]
    divs[0] = tmp
  end
end
  
if divk[0] != oddk[0]
  puts N - divs[0] - odds[0]
else
  if divs[0] > odds[0]
    puts N - divs[0] - odds[1]
  elsif divs[0] < odds[0]
    puts N - divs[1] - odds[0]
  else
    if divs[1] >= odds[1]
      puts N - divs[1] - odds[0]
    else
      puts N - divs[0] - odds[1]
    end
  end
end   
   