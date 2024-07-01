n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

count = 0
a.each do |ai|
  while(ai%2==0)
    count += 1
    ai /= 2
  end
end

printf("%d\n",count)