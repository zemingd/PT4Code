n = gets.to_i
a = gets.split().map(&:to_i)
hash = hash = a.group_by(&:itself).map{|key, value|[key, value.count]}.to_h


def cal(count)
  return count*(count-1)/2
end

all = 0

hash.each do |key, value|
  all += cal(value)
end

a.each do |k|
  puts all - (cal(hash[k]) - cal(hash[k]-1))
end