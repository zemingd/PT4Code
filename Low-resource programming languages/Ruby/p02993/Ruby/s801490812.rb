r=gets.strip.split("").map{&:to_i}
cnt=0
cnt=1 if r[0]==r[1]
cnt=1if r[1]==r[2]
cnt=1if r[2]==r[3]
puts cnt==0 ? "Good" : "Bad"