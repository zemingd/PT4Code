dataset = []
while line = gets
    #0のペアであれば終了
    break if line.split(" ").map!{|s| s.to_i }.all?{|x| x == 0 }
    dataset.push(line)
end

result_str = []
dataset.each{|x|
    values = x.split(" ").map!{|x| x.to_i }
    for i in 0..values.size-1
        for j in i..values.size-1
            if values[i] > values[j]
                _work = values[i]
                values[i] = values[j]
                values[j] = _work
            end
        end
    end
    result_str.push(values[0].to_s + " " + values[1].to_s)
}

result_str.each{|x|
    puts x
}