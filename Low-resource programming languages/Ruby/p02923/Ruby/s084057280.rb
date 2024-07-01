input = gets.to_i
num = gets.to_s.split(" ").map(&:to_i)
@count = []
@result = []
for i in 0..input-2 do
  if num[i] >= num[i+1]
      @count << 1
    else
      @count << 0
  end
end

i = 0
t = 0

  while @count[i] != nil do
    if @count[i] > 0
        t = t + 1
        @result << t
    end
    if @count[i] == 0
      t = 0
    end
    i += 1  
  end
    t = 0

if @result[0] == nil
  print 0
end

if @result != nil
  puts @result.max
end