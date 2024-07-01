ード 

Copy
Copy
input = $stdin.readlines
input.map!{|a| a.chomp("\n").to_i}
hasu= input.map{|a| a%10}
hasu.sort!
k = hasu[0]
hasu.delete_at(0)
kai = hasu.map{|a| 10 - a }
print input.inject(:+) + kai.inject(:+) + hasu.inject(:+)+ k