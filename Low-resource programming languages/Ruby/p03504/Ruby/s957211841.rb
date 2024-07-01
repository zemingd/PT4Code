N,C = gets.split.map{|tmp|tmp.to_i}
S = Array.new(N)
T = Array.new(N)
CC = Array.new(N)
array = Array.new
N.times do |i|
  S[i],T[i],CC[i] = gets.split.map{|tmp|tmp.to_i}  
  S[i] = S[i].to_f - 0.5
  array.push([S[i],T[i]])
end

def comp(t0,t1)
    return t0 < t1
end

array1 = Array.new

(1..10).each do |i|
    array.sort! do |a,b|
        a[1] - b[1]
    end
    f = 0
    array.each_with_index do |item,index|
        if item[0] >= f
            f = item[1]
        else
            array1.push(item)
        end
    end
    if array1.length == 0
        puts i
        break
    end
    array = Marshal.load(Marshal.dump(array1))
    array1.clear
end