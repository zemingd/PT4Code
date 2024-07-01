input = gets.split(" ")
A = input[0].to_i
B = input[1].to_i

(1..1000).each do |num|
    if (num * 0.08).floor == A && (num * 0.1).floor == B
        print num
        break
    end
end