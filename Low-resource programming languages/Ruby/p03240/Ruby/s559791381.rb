N=gets.to_i
info=[]
N.times do
    x,y,h=gets.chomp.split(" ").map(&:to_i)
    if h==0
        info.push([x,y,h])
    else
        info.unshift([x,y,h])
    end
end
101.times do |x|
    101.times do |y|
        flg=true
        h=nil
        info.each do |xi,yi,hi|
            tmp=(x-xi).abs+(y-yi).abs+hi
            h||=tmp
            if h!=tmp
                flg=false
                break
            end if hi>0
            if h>tmp
                flg=false
                break
            end if hi==0
        end
        if flg
            puts "#{x} #{y} #{h}"
            exit
        end
    end
end
