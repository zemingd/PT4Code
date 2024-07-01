def max_key(hash)
  hash = hash.sort {|a,b| a[1]<=>b[1]}.reverse
  hash[0][0]
end

def func(hash, exclude_key = nil)
  res = 0
  if hash.keys.size != 1
    hash = hash.sort {|a,b| a[1]<=>b[1]}.reverse
    if exclude_key
      hash.each{|k,v| res += v if k != exclude_key}
    else
      hash[1..-1].each{|k,v| res += v}
    end
  elsif exclude_key
    res = hash.first[1]
  end
  res
end

_ = gets.to_i
a = []
b = []
x = Hash.new(0)
y = Hash.new(0)
gets.chomp.split.each_with_index do |s, i|
  s = s.to_i
  if i.even?
    a << s
    x[s] += 1
  else
    b << s
    y[s] += 1
  end
end

if a == b
  puts func(x) + func(y, max_key(x))
else
  puts func(x) + func(y)
end