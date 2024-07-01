inputs = gets.chomp.split.map!(&:to_f)
if (((inputs[0] / inputs[3]).ceil).to_i - ((inputs[2] / inputs[1]).ceil).to_i) >= 0 then
  puts "Yes"
else
  puts "No"
end