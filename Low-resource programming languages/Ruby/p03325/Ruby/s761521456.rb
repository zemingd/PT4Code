N = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)

if arr.all?{|v| v % 2 != 0}
  puts 0
  return
end


def exec arr, count
  arr.sort!.reverse!
  flag = false
  arr.each_with_index do |v, index|
    if v % 2 == 0 && flag == false
      arr[index] = v / 2
      flag = true
    elsif
      arr[index] = v * 3
    end
  end
  if flag
    count += 1
    exec arr, count
  else
    puts count
  end
end

exec arr, 0