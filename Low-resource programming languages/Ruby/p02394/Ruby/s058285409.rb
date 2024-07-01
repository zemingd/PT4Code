W,H,x,y,r=gets.chomp.split.map{|v|v.to_i}
result = "Yes"
if x<r || W-x<r then
        result = "No"
elsif y<r || H-y<r then
        result = "No"
end
puts result