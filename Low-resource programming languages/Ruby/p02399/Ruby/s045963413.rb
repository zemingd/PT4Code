begin
  input_line = []
  while line = $stdin.gets.chomp
    break if line == ""
    input_line.push(line.split(" "))
  end
rescue
end

i = input_line.first#.map{|i| i.to_f }

op = [0,0,0]

op[0] = i[0].to_i / i[1].to_i
op[1] = (i[0].to_i % i[1].to_i).to_i
op[2] = i[0].to_f / i[1].to_f

puts op.join(" ")