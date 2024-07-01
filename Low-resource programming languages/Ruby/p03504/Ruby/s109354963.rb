N,C = gets.split.map{|tmp|tmp.to_i}
array = Array.new
N.times do |i|
  s,t,cc = gets.split.map{|tmp|tmp.to_i}  
  s = s.to_f - 0.5
  array.push([s,t])
end

array1 = Array.new
deletes = Array.new
(1..10**5).each do |i|
    array.sort! do |a,b|
        a[1] - b[1]
    end
    f = 0
    deletes.clear
    array.each_with_index do |item,index|
        if item[0] >= f
            f = item[1]
            deletes.push(item)
        end
    end
    deletes.each do |item|
        index = array.find_index(item)
        array.delete_at(index)
    end
    if array.length == 0
        puts i
        break
    end
end