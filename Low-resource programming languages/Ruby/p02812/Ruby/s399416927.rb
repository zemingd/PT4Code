n = gets.to_i
s = gets.split("")

state = 0
count = 0

0.upto(n) do |j|
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
    count += 1 if i == 'C'
    state = 0
  end
end
  
puts count