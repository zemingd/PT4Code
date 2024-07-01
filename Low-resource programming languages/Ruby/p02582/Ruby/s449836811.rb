s = gets.chomp
cnt = 0
max = 0
s.each_char do |c|
  if c == 'R'
    cnt += 1
  else
    max = [cnt, max].max
      cnt = 0
  end
end

p [cnt, max].max
