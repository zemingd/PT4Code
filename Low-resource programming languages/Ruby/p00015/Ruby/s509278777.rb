def parse_num_str(num_str)

  if (num_str.length <= 40)
    result = num_str.to_i
  else
    result = [num_str[0...40], num_str[40...num_str.length]]
  end
  return result
end
n = gets.to_i

n.times do
  num1 = gets.chomp
  num2 = gets.chomp

  if num1.length > 80 || num2.length > 80
    puts "overflow"
    next
  end
  num1 = parse_num_str(num1)
  num2 = parse_num_str(num2)

  if (num1.kind_of?(Integer) && num2.kind_of?(Integer))
    puts num1 + num2
  elsif (num1.kind_of?(Array) && num2.kind_of?(Array))
    carry_flag = false
    block1 = num1[0].to_i + num2[0].to_i
    carry_flag = true if block1.to_s.length == 41

    if carrya_flag
      block2 = num1[1].to_i + num2[1].to_i + 1
      if block2.to_s.length == 41
        puts "overflow"
      else
        puts block2.to_s + block1.to_s[1...40]
      end
    else
       block2 = num1[1].to_i + num2[1].to_i
       if block2.to_s.length == 41
        puts "overflow"
       else
        puts block2.to_s + block1.to_s
       end
    end

  elsif (num1.kind_of?(Integer) && num2.kind_of?(Array))
    carry_flag = false
    block1 = num1 + num2[0].to_i
    carry_flag = true if block1.to_s.length == 41

    if carry_flag
      block2 = num2[1].to_i + 1
      if block2.to_s.length == 41
        puts "overflow"
      else
        puts puts block2.to_s + block1.to_s[1...40]
      end
    else
      puts num2[1] + block1.to_s
    end
  elsif (num1.kind_of?(Array) && num2.kind_of?(Integer))
    carry_flag = false
    block1 = num2 + num1[0].to_i
    carry_flag = true if block1.to_s.length == 41

    if carry_flag
      block2 = num1[1].to_i + 1
      if block2.to_s.length == 41
        puts "overflow"
      else
        puts puts block2.to_s + block1.to_s[1...40]
      end
    else
      puts num1[1] + block1.to_s
    end
  end

end