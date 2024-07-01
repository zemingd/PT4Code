array = Array.new(3)
array=gets
array=array.split(" ")
array.sort
if array[0]=="5"&&array[1]=="5"&&array[2]=="7" then
    puts "YES"
else
    puts "NO"
end