while s=gets do
    i=s.to_i
    x=0
    0.upto(9) do |a|
        0.upto(9) do |b|
            0.upto(9) do |c|
                0.upto(9) do |d|
                    x+=1 if [a,b,c,d].inject(:+)==i
                end
            end
        end
    end
    p x
end