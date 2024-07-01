N=gets.to_i
x = []
y = []
h = []

tmpx = 0
tmpy = 0
tmph = 0
N.times do
    xx,yy,hh = gets.chomp.split.map(&:to_i)
    x << xx
    y << yy
    h << hh
    if hh > 0
        tmpx = xx
        tmpy = yy
        tmph = hh
    end
end


0.upto(100) do |i|
    0.upto(100) do |j|
        hh = tmph + (tmpx - i).abs + (tmpy - j).abs

        flag = true;
        0.upto(N-1) do |k|
            if h[k] != [0, hh -  (x[k] - i).abs - (y[k] - j).abs].max
                flag = false
                break;
            end
        end      

        if flag == true
            printf("%d %d %d\n", i, j, hh)
            exit
        end
    end
end

