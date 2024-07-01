input1=gets.chomp.split(' ').map!(&:to_i)
input2=gets.chomp.split(' ').map!(&:to_i)
xmin=input1[0]
xmax=input1[0]
if input1[1]==0 then
    puts 0
    return
end
loop do
    if input2.include?(xmin) then
        xmin-=1
    else
        puts xmin
        break;
    end
    if input2.include?(xmax) then
        xmax+=1
    else
        puts xmax
        break;
    end
end