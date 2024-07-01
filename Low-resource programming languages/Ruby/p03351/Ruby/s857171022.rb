#声が届く距離?
#bigvalue=val1,smallvalue=val2
def hearing_voice?(val1,val2,d)
  return hearing_voice?(val2,val1,d) if val1 < val2 
  
  if val1 - val2 <= d
    return true      
  else
    return false
  end
end

# main #hash化
key   = [:a, :b, :c, :d]
value = gets.split(' ').map(&:to_i)
keyvalue = [key, value].transpose
point = Hash[*keyvalue.flatten]

#A to C
if hearing_voice?(point[:c],point[:a],point[:d]) 
    puts "Yes"
# A to B to C
elsif hearing_voice?(point[:a],point[:b],point[:d]) && hearing_voice?(point[:b],point[:c],point[:d])
    puts "Yes"
else
    puts "No"
end