N = gets.to_i
Xs = gets.split.map(&:to_i)
list = []
Xs.each_with_index{|x,i|
    list.push([i,x])
}
list.sort_by!{|_,i| i}
hash = {}
index = N / 2
N.times{|i|
    k, v = list[i]
    if i < index
        hash[k] = list[index]
    else
        hash[k] = list[index-1]
    end
}

N.times{|i|
    k, v = hash[i]
    puts "#{v}"
}