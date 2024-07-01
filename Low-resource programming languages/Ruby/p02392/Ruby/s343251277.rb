begin
  input_line = []
  while line = $stdin.gets.chomp
    break if line == ""
    input_line.push(line.split(" "))
  end
rescue
end

i = input_line.first.map{|i| i.to_i }

if i[0] < i[1] && i[1] < i[2]
  puts "Yes"
else
  puts "No"
end