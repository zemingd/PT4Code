N,C = gets.split.map{|tmp|tmp.to_i}
array = Array.new
N.times do |i|
  s,t,cc = gets.split.map{|tmp|tmp.to_i}  
#  s = s.to_f - 0.5
  array.push([s,t,cc])
end

array1 = Array.new
rec = C

(1..C).each do |i|
    array.sort! do |a,b|
        a[1] - b[1]
    end
    f = 0
    c = -1
    array.each_with_index do |item,index|
        if item[0]-0.5 >= f
            f = item[1]
            c = item[2]
        elsif
            item[0] >= f && c == item[2]
            f = item[1]
        else
            array1.push(item)            
        end
    end
    if array1.length == 0
        rec = i
        break
    end
    array = array1.map(&:dup)
    array1.clear
end
puts rec == -1 ? C : rec