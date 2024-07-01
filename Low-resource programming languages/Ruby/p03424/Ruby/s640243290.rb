n = gets.chop.to_i
arr = gets.split.map
res = [0, 0, 0, 0]
cnt = 0
arr.each do |c|
  if c == 'P' && res[0] == 0
    cnt += 1
    res[0] = 1
  elsif c == 'W' && res[1] == 0
    cnt += 1
    res[1] = 1
  elsif c == 'G' && res[2] == 0
    cnt += 1
    res[2] = 1
  elsif c == 'Y' && res[3] == 0
    cnt += 1
    res[3] = 1
  end
end
puts cnt == 3 ? 'Three' : 'Four'