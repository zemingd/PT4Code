N = gets.to_i
S = gets

slimes = S.chars

i = 0
cnt = 0

slimes.length.times do
  break if i == slimes.length - 1
  
  if i == 0
    cnt += 1
  elsif slimes[i] == slimes[i+1]
    cnt += 1 if i == 1
  else
    cnt += 1
  end
  
  i += 1
end

p cnt
