n = gets.to_i
tako = gets.split.map(&:to_i)

sum = 0
(0...(n - 1)).each{|left|
    ((left + 1)...n).each{|right|
        sum += tako[left] * tako[right]
    }
}

puts sum
