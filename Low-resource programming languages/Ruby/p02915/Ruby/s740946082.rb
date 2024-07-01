n = gets.chomp.split.map(&:to_i)
i = 0
str = [3]
count = 0  # str に n が何回あるか数える

while (i < 3)
  if (str[i] == 'n')
    count += 1
  end
end



