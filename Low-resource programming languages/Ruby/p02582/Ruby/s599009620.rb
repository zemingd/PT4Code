arr = gets.chomp.split('')

  if arr[0] == "R" && arr[1] == "R" && arr[2] == "R"
  puts "3"
    exit
  end
  if arr[0] == "R" && arr[1] == "R"
   puts "2"
    exit
 end
if arr[1] == "R" && arr[2] == "R"
   puts "2"
  exit
 end
if arr.include?("R")
  puts "1"
else
  puts "0"
end