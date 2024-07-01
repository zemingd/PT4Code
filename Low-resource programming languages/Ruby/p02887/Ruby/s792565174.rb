N = gets.to_i
S = gets

slimes = S.chars

i = 1
cnt = 1

tmp = slimes.length

tmp.times do
  is_next_check = slimes[i].eql?(slimes[i+1])
  break if !is_next_check
  i += 1
end

p "#{i}kaime #{cnt}"

slimes.length.times do
  break if i == slimes.length - 1
  
  if slimes[i] == slimes[i+1]
    # nothing
  else
    cnt += 1
  end
  
  i += 1
end

p cnt
