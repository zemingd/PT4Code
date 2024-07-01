line = STDIN.gets

head = line[0,2]
tail = line[2,2]


def MM?(a)
  0 < a.to_i and a.to_i < 13
end

if (12 < head.to_i and tail == "00") or (head == "00" and 12 < tail.to_i) or (head == "00" and tail == "00")
  puts "NA"
end

if MM?(head) and !MM?(tail)
  puts "MMYY"
end

if MM?(head) and MM?(tail)
  puts "AMBIGUOUS"
end

if !MM?(head) and MM?(tail)
  puts "YYMM"
end
