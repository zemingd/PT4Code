a = []
a = gets.split.map(&:to_i)

cnt = 0
    if a[1] < 0
        cnt += 1
        if a[0] < 0
            cnt +=1
        end
    else
        if a[0] < 0
            cnt +=1
        end
    end
puts cnt + (a[0].abs-a[1].abs).abs