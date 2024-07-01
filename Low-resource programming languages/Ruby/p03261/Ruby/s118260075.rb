input_line = gets.to_i
#複数行に渡る入出力はこれで取れる
line = readlines.map(&:chomp)
input_line.times do |i|
  0.upto(i-1) do |j|
    if line[i].eql? line[j] then
      puts "No"
      exit
    end
  end
end
puts "Yes"