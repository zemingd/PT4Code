# Count
str = STDIN.gets
# Array
inputArray = STDIN.gets.split()
outputArray = Array.new()

inputArray.each_index{|idx|
    outputArray.push(inputArray[idx])
    outputArray.reverse!
}

result = ""
outputArray.each{|val|
    result << val << " "
}

puts result.strip