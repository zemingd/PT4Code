line = $stdin.readlines
for N in 1..line.length
    if line[N-1] == "0\n"
        break
    end
    print "Case ",N,": ",line[N-1]
end