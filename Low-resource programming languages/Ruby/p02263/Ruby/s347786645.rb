input = gets.split
arr = []

input.each { |i|
    case i
    when '+'
        arr.push(arr.pop + arr.pop)
    when '-'
        arr.push(-arr.pop + arr.pop)
    when '*'
        arr.push(arr.pop * arr.pop)
    else
        arr.push(i.to_i)
    end
}
puts arr