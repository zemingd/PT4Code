N = gets.to_i
a = gets.chomp.split.map(&:to_i) 
a << 0
a = a.sort!
num = 1

(2..N).each do |i|
if a[i] == a[i-1]
  if a[i] != a[i-2]
    num -= 1
  end
else
ans = "Yes"
  (1..i-1).each do |n|
    if a[i]%a[n] != 0
      ans = "Yes"
    else
      ans = "No"
    end
    break if ans =="No"
    end
  end
    if ans == "Yes"
      num += 1
    end
end

puts num
    
