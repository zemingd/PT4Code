count = gets.to_i
arr = gets.split(" ").map(&:to_i)
bool = true
counter = 0
while bool
    bool = false
    (arr.length - 1).downto(1) do |index|
        if arr[index] < arr[index - 1]
            tmp = arr[index]
            arr[index] = arr[index - 1]
            arr[index - 1] = tmp
            counter += 1
            bool = true
        end
    end
end
puts arr.join(" ")
puts counter

