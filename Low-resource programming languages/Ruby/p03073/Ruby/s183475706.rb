input = gets.chop.to_s

def gen_checker(start, length)
    ret = ""
    length.times do |i|
        ret = ret + ((i+start)%2).to_s
    end
    return ret
end


def distance(str1, str2)
    ret = 0
    str1.length.times do |k|
        if (str1[k] != str2[k]) then
           ret +=1
        end
    end
    return ret
end

p [
    distance(gen_checker(0,input.to_s.length), input),
    distance(gen_checker(1,input.to_s.length), input)
].min