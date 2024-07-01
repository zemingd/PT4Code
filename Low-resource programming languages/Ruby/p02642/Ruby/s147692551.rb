N=gets.to_i
array=gets.chomp.split(" ").map(&:to_i)
rets=[]
array.each_with_index do |a, a_i|
    if array.each_with_index.all?{|b,b_i| a_i==b_i || a%b!=0 }
        rets.push(a)
    end
end
puts rets.length
