i = gets.chomp
prev = ''
result = ''
i.split('').each do |k|
  result = if prev == k
             'Bad'
  　　　　　　　break
           else
		    'Good'
		　  end
  prev = k
end
puts result
