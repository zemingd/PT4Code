a, b = gets.split.map{|e| e.to_i}

1.upto(20000) do |i|
  if (i * 0.08).to_i == a and (i * 0.1).to_i == b
    puts i
    exit
  end
end

puts -1

  
