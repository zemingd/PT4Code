S = gets
if S.include?("A")
  if S.include?("B")
    puts "Yes"
    exit
  end
end
puts "No"