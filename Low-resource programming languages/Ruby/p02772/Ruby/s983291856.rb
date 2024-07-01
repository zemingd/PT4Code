_=gets
flag = true
gets.split.map(&:to_i).each do |i|
  if i%2==0
	  flag=false unless i%3==0||i%5==0
  end
end
puts flag ? 'APPROVED':'DENIED'
