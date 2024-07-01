array = gets.split.map(&:to_i)
string = gets.chomp
if array[1] == 1
  hoge = string[0].downcase + string[array[1]...array[0]]
elsif array[0] == array[1]
  hoge = string[0...array[0]-1] + string[array[0]-1].downcase
else
  hoge = string[0...array[1]-1] + string[array[1]-1].downcase + string[array[1]...array[0]]
end
puts hoge