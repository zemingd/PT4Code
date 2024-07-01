testCase = Array.new
i = 0
STDIN.each_line do |line|
  testCase[i] = line.to_i
  i += 1
end
testCase.length.times do |i|
counter = 0
 10.times do |a|
   10.times do |b|
     10.times do |c|
       10.times do |d|
        if a+b+c+d == testCase[i]
          counter += 1
        end
      end
    end
  end
end
puts counter
end