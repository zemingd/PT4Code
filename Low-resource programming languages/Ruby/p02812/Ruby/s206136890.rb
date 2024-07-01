n = gets.to_i
s = gets

state = 0
count = 0

0.upto(n-1) do |j|
  i = s[j]
  if state == 0
    if i == 'A'
      state = 1
    else
      state = 0
    end
  elsif state == 1
    if i == 'B'
      state = 2
    else
      state = 0
    end
  else
    if i == 'C'
      count += 1
    end
    state = 0
  end
end
  
puts count