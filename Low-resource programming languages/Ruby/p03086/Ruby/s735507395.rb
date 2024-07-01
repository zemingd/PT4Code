atcg = ['A','T','C','G']
s = gets
max_len = 0
cur_len = 0

s.chars.each do |c|
  if atcg.include?(c)
    cur_len+=1
  else
    if cur_len > max_len
      max_len = cur_len
    end
    cur_len = 0
  end
end
puts max_len