while true
input = STDIN.gets.split(" ")
if input[1] == "0" && input[0] == "0" then break end
puts input[1] + " " + input[0]
end