s = gets.chomp.split("")
n = s.count
t1 =  s[0..((n-1)/2)-1]
t2 =  s[(n+3)/2-1..n-1]

def kaibun?(arr)
  arr.count/2.times do |i|
    unless arr[i] == arr[-(i+1)]
      return false
    end
  end
end

if kaibun?(s) && kaibun?(t1) && kaibun?(t2)
  puts "Yes"
else
  puts "No"
end