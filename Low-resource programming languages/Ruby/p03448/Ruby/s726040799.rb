num500 = gets.chomp.to_i
num100 = gets.chomp.to_i
num50 = gets.chomp.to_i
x = gets.chomp.to_i

def coins(x,num500,num100,num50)
  if num500 == 0 or x < 500 then
    if num100 == 0 or x < 100 then
      if x % 50 != 0 or x / 50 > num50 then
        return 0
      else
        return 1
      end
    else
      return coins(x-100,0,num100-1,num50) + coins(x,0,0,num50)
    end
  else
     return coins(x-500,num500-1,num100,num50) + coins(x,0,num100,num50)
  end
end

puts coins(x,num500,num100,num50)
