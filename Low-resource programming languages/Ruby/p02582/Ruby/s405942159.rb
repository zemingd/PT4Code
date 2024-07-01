s=gets.chomp.to_s
result=[]
if s.include?("RRR")
    p 3
    exit
elsif s.include?("RR")
    p 2
    exit
elsif s.include?("R")
    p 1
    exit
end
p 0
