def change_number(number)
  if number == 1
    return 0
  end

  if number == 0
    return 1
  end
end

n = gets.to_i
array = gets.split.map(&:to_i)
last_answer = []

while true do
  answer = []
  count = n / 2
  (count+1..n).each do |i|
    if array[i-1] == 1
      answer << i
    end
  end

  (1..count).each do |i|
    answer.each do |bb|
      if bb % i == 0
        array[i-1] = change_number(array[i-1])
      end
    end
  end


  n = count
  last_answer += answer
  if n == 1
    break
  end
end

if array[0] == 1
  last_answer << 1
end

p last_answer.count
puts last_answer.join(" ")
