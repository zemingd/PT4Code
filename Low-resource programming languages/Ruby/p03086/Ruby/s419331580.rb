lines = STDIN.gets.chomp

s = ['A', 'G', 'C', 'T']
count = 0;
result = 0;
lines.each_char do |c|
    if s.include?(c)
      count += 1
    else
      if result < count 
          result = count
      end
      count = 0
  end
end

print result;
