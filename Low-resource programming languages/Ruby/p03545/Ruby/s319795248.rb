array = gets.split("").map(&:to_i)

option1 = ["+", "-"]
option2 = ["+", "-"]
option3 = ["+", "-"]

option1.product(option2, option3).each { |option|
    answer = array[0]
    
    array.length.times { |i|
        if option[i] == "+" then
            answer += array[i + 1]
        elsif option[i] == "-" then
            answer -= array[i + 1]
        end
    }
    if answer == 7 then
        print array[0].to_s + option[0] + array[1].to_s + option[1] + array[2].to_s + option[2] + array[3].to_s + "=" + answer.to_s
        break
    end
}