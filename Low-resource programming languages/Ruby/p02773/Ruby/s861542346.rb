# Your code here!
gets.chop
arr = []
while(str = gets) do
    arr.push str.chop
end
str_hash = Hash.new(0)
arr.map{|str|
  str_hash[str] += 1
}
count_hash = Hash.new{[]}
max_count = 0
str_hash.map{|k, v|
  max_count = v > max_count ? v : max_count
  count_hash[v] = count_hash[v].push(k)
}
print count_hash[max_count].sort.join("\n")