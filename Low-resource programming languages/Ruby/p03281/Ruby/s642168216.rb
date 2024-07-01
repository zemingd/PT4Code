n = gets.to_i

p (1..n)
    .select{|i|i.odd?}
    .map{|i|
        sum = 0
        (1..i).each{|j|
            sum += 1 if i % j == 0
        }
        sum
    }
    .select{|i|i == 8}
    .count
