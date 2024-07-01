(gets.to_i).times do
  n1 = gets.to_i
  n2 = gets.to_i

  #print (n1 + n2).to_s.length," : "
  if (n1 + n2).to_s.length > 80
      puts "overflow"
  else
      puts n1 + n2
  end
end

