input = gets.chomp.split
n = input[0].to_i
m = input[1].to_i

sw = []
for i in 1..m do
    sw.push(gets.chomp.split.map(&:to_i))
end

ps = gets.chomp.split(" ").map(&:to_i)

switch = Array.new(n,0)

light = true

for i in 1..m do
    if sw[i-1][0] == 1
        if ps[i-1] == 0
            if switch[i-1] == 1
                light = false
            else
                switch[i-1] = -1
            end
        else
            if switch[i-1] == -1
                light = false
            else
                switch[i-1] = 1
            end
        end
    end
end

def tansaku(i,n,m,sw,ps,switch)
    count = 0
    if i > n
        lt = true
        for j in 1..m do
            cnt = 0
            k = sw[j-1][0]
            for j2 in 1..k do
                if switch[j2-1] == 1
                    cnt += 1
                end
            end
            if cnt % 2 != ps[j-1]
                lt = false
            end
        end
        if lt 
            return 1
        else
            return 0
        end

    else
        if switch[i-1] == 0
            # print i, " = " "on\n" 
            switch[i-1] = 1
            count += tansaku(i+1,n,m,sw,ps,switch)
            # print i, " = " "off\n"
            switch[i-1] = -1
            count += tansaku(i+1,n,m,sw,ps,switch)
            switch[i-1] = 0
        else
            # print i," = ", switch[i-1],"\n"
            count += tansaku(i+1,n,m,sw,ps,switch)
        end
    end
    return count
end 

if light
    puts tansaku(1,n,m,sw,ps,switch)
else
    puts "0"
end