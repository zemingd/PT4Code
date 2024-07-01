a, b, c = gets.chomp.split(' ').map(&:to_i)

ret = 1
div_list = []

loop do
  ret = (ret * a) % b
  if ret == c
    puts 'YES'
    exit
  end

  if div_list.include?(ret)
    puts 'NO'
    exit
  end

  list << ret
end
