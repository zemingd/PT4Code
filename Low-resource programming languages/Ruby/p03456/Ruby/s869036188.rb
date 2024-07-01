b,c=gets.chomp.split(" ")
num = (b + c).to_i
320.times do |k|
  if k**2 == num
    puts "Yes"
    exit
  end
end
puts "No"