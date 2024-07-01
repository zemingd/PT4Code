N = gets.to_i
array = gets.split(' ').map(&:to_i)

res = true
if N % 3 != 0
  unless array.all? {|a| a==0 }
    res = false
  end
else
  array.uniq!
  if array.length != 3 && !array.all? {|a| a==0 }
    res = false
  else
    31.times do |i|
      ones = array.map{|a| a[i]}.select{|a| a==1}.length
      # [000] or [110]
      unless ones == 0 || ones == 2
        res = false
        break
      end
    end
  end
end

puts res ? 'Yes' : 'No'