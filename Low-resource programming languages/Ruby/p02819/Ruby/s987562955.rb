require "set"
x = gets.chomp.to_i

MAX = 10 ** 5 + 1000
set = Set.new
2.upto(Math.sqrt(MAX)) do |i|
  next if set.include?(i)
  tmp = i * 2
  while tmp <= MAX do
    set << tmp
    tmp += i
  end
end

x.upto(MAX) do |i|
  unless set.include?(i)
    puts i
    exit
  end
end
