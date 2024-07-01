a=gets.to_i
line=gets.chomp.split().map(&:to_i)
line.select! { |x|
  x%2==0
}
line.each_with_index do |l, index|
  if l%3 !=0 && l%5 !=0
    puts "DENIED"
    break
  end  
  if index == line.size - 1
    puts "APPROVED"
  end
end  
