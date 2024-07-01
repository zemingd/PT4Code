gets.to_i
A = gets.chomp.split(" ").map(&:to_i)

C = Array.new(9, 0)
A.each{|a|
  if a < 400 then
    C[0] += 1
  elsif a < 800 then
    C[1] += 1
  elsif a < 1200 then
    C[2] += 1
  elsif a < 1600 then
    C[3] += 1
  elsif a < 2000 then
    C[4] += 1
  elsif a < 2400 then
    C[5] += 1
  elsif a < 2800 then
    C[6] += 1
  elsif a < 3200 then
    C[7] += 1
  else
    C[8] += 1
  end
}
wk = C[0, 8].count{|c| c > 0}

puts [wk, wk+C[8]].join(' ')
