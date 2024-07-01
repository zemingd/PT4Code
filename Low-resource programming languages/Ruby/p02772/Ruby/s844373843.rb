N=gets.to_i
a=gets.chomp.split.map(&:to_i)
a.each do |i|
  if i%2==1
    next
  elsif i%3==0 or i%5==0
    next
  else
    puts "DENIED"
    exit
  end
end
puts "APPROVED"