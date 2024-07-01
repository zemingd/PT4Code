as=3.times.map{gets.split.map(&:to_i)}
N = gets.to_i
N.times do |i|
    b = gets.to_i
    3.times do |j|
        3.times do |k|
            as[j][k] = true if as[j][k] == b
        end
    end
end
f = false
3.times do |i|
    f = true if as[i].all?{|e|e==true}
end
as = as.transpose
3.times do |i|
    f = true if as[i].all?{|e|e==true}
end
f = true if as[0][0]==true && as[1][1]==true && as[2][2]==true 
f = true if as[2][0]==true && as[1][1]==true && as[0][2]==true 
puts f ? "Yes" : "No"