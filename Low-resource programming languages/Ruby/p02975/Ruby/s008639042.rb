N = gets.to_i
array = gets.split(' ').map(&:to_i)

res = true
if array.any? {|a| a != 0 }
  if N % 3 != 0
    res = false
  else
    array3 = array[0,3]
    31.times do |i|
      ones = array3.map{|a| a[i]}.select{|a| a==1}.length
      # [000] or [110]
      unless ones == 0 || ones == 2
        res = false
        break
      end
    end
  end
end

puts res ? 'Yes' : 'No'