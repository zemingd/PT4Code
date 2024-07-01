n = gets.chomp.to_i
s = gets.chomp

cnt = 0
white_zone = 0
if n % 2 == 0
  white_zone = n/2 - 1
else
  white_zone = n/2
end

flag = true
first_flag = true
(white_zone+1).upto(n-1).each do |i|
  #puts "black_zone: i=#{i}, flag=#{flag}"
  if first_flag
    first_flag = false
    if s[i-1] == '#' && s[i] == '#'
      flag = false
      next
    elsif s[i-1] == '#' && s[i] == '.'
      flag = false
      s[i] = '#'
      cnt += 1
      next
    elsif s[i-1] == '.' && s[i] == '#'
      flag = false
      next
    elsif s[i-1] == '.' && s[i] == '.'
      next
    end
  end
  next if s[i] == '.' && flag
  flag = false
  if s[i] == '.'
    cnt += 1
  end
end

flag = true
first_flag = true
white_zone.downto(0).each do |i|
  #puts "white_zone: i=#{i}, flag=#{flag}"
  if first_flag
    first_flag = false
    if s[i+1] == '#' && s[i] == '#'
      next
    elsif s[i+1] == '#' && s[i] == '.'
      flag = false
      next
    elsif s[i+1] == '.' && s[i] == '#'
      flag = false
      cnt += 1
      next
    elsif s[i+1] == '.' && s[i] == '.'
      flag = false
      next
    end
  end

  next if s[i] == '#' && flag
  flag = false
  if s[i] == '#'
    cnt += 1
  end
end

puts cnt
