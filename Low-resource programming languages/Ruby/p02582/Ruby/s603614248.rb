line = gets()
if line.include?("RRR")
    print("3")
elsif line.include?("RR")
    print("2")
elsif line.include?("R")
    print("1")
else
    print("0")
end