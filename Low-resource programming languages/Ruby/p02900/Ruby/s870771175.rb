input = gets.chomp.split(" ").map(&:to_i).sort
i = 2
result = []

while (i <= input[0]) do
  answer = true
  if (input[0]%i ==0)&&(input[1]%i==0)
      result.each do |e|
        if i%e==0
          answer = false
          break
        end
      end
      if answer
        result << i
      end
  end
  i += 1
end

result << 1

puts result.length