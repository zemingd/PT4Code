def hash_sort_desc(hash)
  hash.sort {|a,b| a[1]<=>b[1]}.reverse
end

def search_mode(hash)
  hash = hash_sort_desc(hash)
  [hash[0][0], hash[1][0]]
end

def count_replace(hash, other_replace_key)
  res = 0
  hash.each do |k, v|
    res += v if k != other_replace_key
  end
  res
end

def select_replace_key(hash, other_key)
  d_hash = hash_sort_desc(hash)
  res = nil
  d_hash.each do |k, v|
    if k != other_key
      res = k
      break
    end
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

ua = a.uniq
ub = b.uniq
if ua.size == 1 && ub.size == 1
  if ua == ub
    puts b.size
  else
    puts '0'
  end
elsif ua.size == 1
  other_replace_key = select_replace_key(y, ua.first)
  puts count_replace(y, other_replace_key)
elsif ub.size == 1
  other_replace_key = select_replace_key(x, ub.first)
  puts count_replace(x, other_replace_key)
else
  a_key1, a_key2 = search_mode(x)
  b_key1, b_key2 = search_mode(y)
  if a_key1 == b_key1
    ans1 = count_replace(x, a_key1) + count_replace(y, b_key2)
    ans2 = count_replace(x, a_key2) + count_replace(y, b_key1)
    puts [ans1, ans2].min
  else
    puts count_replace(x, a_key1) + count_replace(y, b_key1)
  end
end
