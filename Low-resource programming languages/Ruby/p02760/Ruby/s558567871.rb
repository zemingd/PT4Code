sheet = []
3.times do |i|
  sheet << gets.split.map(&:to_i)
end
N = gets.to_i
#=begin
N.times do |n|
  num = gets.to_i
  3.times do |i|
    pos = sheet[i].index(num)
    unless pos.nil?
      sheet[i][pos] = "*"
    end
  end
end

# 縦
bingo = false
3.times do |pos|
  if (sheet[pos][0] == "*") && (sheet[pos][1] == "*") && (sheet[pos][2] == "*")
    puts "Yes"
    exit
  end
  if (sheet[0][pos] == "*") && (sheet[1][pos] == "*") && (sheet[2][pos] == "*")
    puts "Yes"
    exit
  end
end

if (sheet[0][0] == "*") && (sheet[1][1] == "*") && (sheet[2][2] == "*")
  puts "Yes"
  exit
end
if (sheet[0][2] == "*") && (sheet[1][1] == "*") && (sheet[2][0] == "*")
  puts "Yes"
  exit
end

puts "No"
#=end