# require "enumerator"

N = gets

P = gets
P_arry = P.split(" ")

P_int = P_arry.map {|p|
    p.to_i
}

isBreak = false
failure_count = 0

if P_int.each_cons(2).all? {|a, b| a <= b }
    isBreak = true
    print "YES"
    exit
end

for i in 0..N.to_i-1
    for j in 0..N.to_i-1
        if i >= j
            next
        end
        if P_int[i] > P_int[j]
            P_int[i],P_int[j] = P_int[j],P_int[i]
            if P_int.each_cons(2).all? {|a, b| a <= b }
                isBreak = true
                break
            else
                failure_count = failure_count + 1
                P_int[i],P_int[j] = P_int[j],P_int[i]
            end
        end
    end
    break if isBreak || (failure_count > 0)
end

if isBreak
    print "YES"
else
    print "NO"
end