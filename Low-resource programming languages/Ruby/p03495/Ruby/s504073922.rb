N,K = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
hash = {}
A.each do |a|
    hash[a] ||= 0
    hash[a] += 1
end
hash = Hash[hash.sort_by{|k,v|-v}]
cnt = 0
while K > cnt && hash.shift do
    cnt += 1
end
p hash.values.inject(:+) || 0