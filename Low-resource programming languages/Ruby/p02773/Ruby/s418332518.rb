N = gets.chomp.to_i
cnts = {}
max_cnt = 0
N.times do 
  s = gets.chomp
  cnts[s] ||= 0
  cnts[s] += 1
  if max_cnt < cnts[s]
    max_cnt = cnts[s]
  end
end
# S = gets.chomp.chars

a = []
cnts.each do |k, v|
  if v == max_cnt
    a << k
  end
end

a.sort!
a.each do |s|
  print s + "\n"
end