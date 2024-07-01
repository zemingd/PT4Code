N = gets.to_i
S = Array.new N
N.times do |i|
  S[i] = gets.chomp
end

smap = {}
S.each do |s|
  smap[s] ||= 0
  smap[s] += 1
end

max = smap.values.max
smap.find_all{|k,v| v == max }.map{|k| k[0] }.sort.each do |k|
  puts k
end