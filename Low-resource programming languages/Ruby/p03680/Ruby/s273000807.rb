N,*as=$<.read.split.map(&:to_i)
as.unshift(0)

cnt = 0
i = 1
chk = Array.new(N+1,false)
loop do
    cnt += 1
    if as[i] == 2
        puts cnt 
        exit 0
    elsif chk[as[i]]
        puts -1
        exit 0
    end

    chk[i] = true
    i = as[i]
end
