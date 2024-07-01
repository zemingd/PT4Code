n = gets.chomp.to_i
a = readlines.map{|a| a.to_i}

if a.index(2).nil?
  puts "-1"
  exit 
end

a.unshift(0)
count = Array.new(n+1){0}

idx = a[1]
count[1] += 1

while idx != 2 && count.inject(&:+) != n
  prv_idx = idx
  idx = a[idx]

  if prv_idx == a[idx]
    puts "-1"
    exit 
  end
  
  count[prv_idx] += 1
end

if count.inject(&:+) == n
  puts "-1"
  exit 
end

puts count.inject(&:+)