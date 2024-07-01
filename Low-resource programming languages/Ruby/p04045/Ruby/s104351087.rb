nums = [ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' ]
n, k = gets.split
hate_num = gets.split
love_num = nums - hate_num

price = ""
up = false
n.each_char {|v|
  if up then
    price += love_num[0]
  else
    love_num.length.times {|i|
      if v == love_num[i] then
        price += v
        break
      elsif v < love_num[i] then
        price += love_num[i]
        up = true
        break
      end
    }
  end
}
puts price