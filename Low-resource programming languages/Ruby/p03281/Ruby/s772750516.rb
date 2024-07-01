num = gets.chomp.to_i
answers = []
target = true
i = 0
while target do
  tmp = []
  if (i % 2) != 0
    i.times do |n|
      if (i % (n+1)) == 0
        tmp << n
      end
    end
  end
  if tmp.count == 8
    answers << i
  end
  i += 1
  if i == num
    target = false
  end
end

p answers.count
      