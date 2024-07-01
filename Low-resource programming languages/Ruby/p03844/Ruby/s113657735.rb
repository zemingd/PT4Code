arr = $stdin.gets.chomp.split(" ")

if arr[1] == "+"
   puts arr[0].to_i + arr[2].to_i
else
   puts arr[0].to_i - arr[2].to_i
end