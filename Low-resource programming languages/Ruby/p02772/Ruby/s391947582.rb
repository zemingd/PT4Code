a = gets.chomp!.to_i

array = gets.chomp!.split(" ").map(&:to_i)
judge = []
array.each do |num|
  if num%3==0 || num%5==0
    judge << 1
  else
    judge << 0
  end
end

if judge.index(0)
	puts "DENIED"
else
  puts "APPROVED"
end