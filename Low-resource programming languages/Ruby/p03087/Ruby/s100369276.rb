nq = gets.chomp.split
n = nq[0].to_i
q = nq[1].to_i

s = gets.chomp

lr_a = []
q.times do
  lr = gets.chomp.split
  2.times do |i|
    lr[i] = lr[i].to_i - 1
  end
  lr_a << lr
end

q.times do |i|
  start = lr_a[i][0]
  finish = lr_a[i][1]
  ac_count = 0
  while start < finish
    if s[start] == "A" && s[start+1] == "C"
      ac_count += 1
      start += 1
    end
    start += 1
  end
  puts ac_count
end