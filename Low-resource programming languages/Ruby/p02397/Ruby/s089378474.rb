arr = Array.new
while str = STDIN.gets
    op1,op2=str.chomp.split.map{|v|v.to_i}
    break if op1==0 && op2==0
    arr.insert(arr.length,[op1,op2])
end

arr.each do |elm|
    if elm[0]>elm[1] then print elm[1]," ",elm[0],"\n"
    else print elm[0]," ",elm[1],"\n"
    end
end