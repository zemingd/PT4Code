s = STDIN.gets()

if s.length == 1
  puts "0"
  exit
end

def flip(a)
  if a == "0"
    return "1"
  else
    return "0"
  end
end

cnt = 0
before = "2"
s.each_char do |a|
  if a == before
    a = flip(a)
    cnt += 1
  end
  before = a
end

puts cnt
