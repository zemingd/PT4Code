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
        s = array[0].to_s
        (array.length-1).times { |i|
            s +=  option[i] + array[i+1].to_s
        }
        print s + "=" + answer.to_s
        break
    end
}