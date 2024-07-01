a,b,c,d = gets.chomp.split("").map(&:to_i)

8.times do |i|
  op_arr = ("00" + i.to_s(2))[-3..-1]

  result = a
  arr = []
  if op_arr[0] == "1" then
    result += b
    arr << "+"
  else
    result -= b
    arr << "-"
  end

  if op_arr[1] == "1" then
    result += c
    arr << "+"
  else
    result -= c
    arr << "-"
  end

  if op_arr[2] == "1" then
    result += d
    arr << "+"
  else
    result -= d
    arr << "-"
  end

  if result == 7 then
    puts "#{a}#{arr[0]}#{b}#{arr[1]}#{c}#{arr[2]}#{d}=7"
    exit
  end
end
