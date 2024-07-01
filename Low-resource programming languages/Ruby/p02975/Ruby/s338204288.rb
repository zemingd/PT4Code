times = gets.to_i
number = gets.split
a = 0
answer = 1
times-2.times do  
	if number[a].to_i == number[a-1].to_i ^ number[a+1].to_i
		answer = 1
    else
      	answer = 0
    end
  a = a + 1
end

if number[a].to_i == number[a-1].to_i ^ number[0].to_i
	answer = 1
else
    answer = 0
end

if number[0].to_i == number[a].to_i ^ number[1].to_i
	answer = 1
else
    answer = 0
end

if answer == 1
  puts "Yes"
else
  puts "No"
end