s = gets.chomp
t = gets.chomp

hash = {}

s.chars.each_with_index do |c, i|
  hash[c] ||= []
  hash[c] << i
end

cnt = 0
p = 0
fst = true
t.chars.each do |c|
  d = hash[c]

  unless d
    puts "-1"
    exit
  end
  
  if d[-1] <= p
    p = d[0]
    cnt += 1
    next
  end
 
  if d[0] > p
    p = d[0]
    next
  end

  p = d.bsearch { |v| v > p }
end

puts cnt * s.length + p + 1
