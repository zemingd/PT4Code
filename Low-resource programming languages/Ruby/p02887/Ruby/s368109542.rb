n = $stdin.gets.chomp.to_i
arr = $stdin.gets.chomp.split("")

newarr = [arr[0]]

for i in 1..arr.size - 1
    if arr[i] != arr[i - 1]
        newarr << arr[i]
    end
end

puts newarr.size