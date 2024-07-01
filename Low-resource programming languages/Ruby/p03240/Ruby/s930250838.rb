N=gets.to_i
info=[]
N.times do
    x,y,h=gets.chomp.split(" ").map(&:to_i)
    info.push([x,y,h])
end
101.times do |x|
    101.times do |y|
        flg=true
        h=nil
        info.each do |xi,yi,hi|
            next if hi==0
            tmp=(x-xi).abs+(y-yi).abs+hi
            h||=tmp
            if h!=tmp
                flg=false
                break
            end
        end
        if flg
            puts "#{x} #{y} #{h}"
            exit
        end
    end
end
