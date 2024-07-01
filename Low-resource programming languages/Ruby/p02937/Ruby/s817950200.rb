s = gets.chomp
t = gets.chomp

wd = {}
s.chars.each.with_index do |c, i|
  wd[c] ||= []
  wd[c] << i
end

cnt = p = 0
fst = true
t.chars.each do |c|
  d = wd[c]

  if d.nil?
    puts -1
    exit
  end

  if fst
    fst = false
    next if d[0] == 0
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

  p = d.bsearch { |i| i > p }
end

puts s.length * cnt + p + 1