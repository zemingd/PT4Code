S=gets.chomp
N=S.size
ans=0
0.upto(N-2) do |i|
    (i+1).upto(N-1) do |j|
    	if S[i..j].split("").all?{|e|e=="A" || e=="C" || e=="G" || e=="T"}
            jd=j-i+1
            ans=ans<jd ? jd : ans
        end
    end
end
puts ans