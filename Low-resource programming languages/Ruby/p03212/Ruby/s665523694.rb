N = STDIN.gets.chomp.to_i


$arr = ['7', '5', '3']

def increment(i)
  if $arr.length == i
    $arr.push('3')
    return
  end

  case $arr[i]
  when '3'
    $arr[i] = '5'
  when '5'
    $arr[i] = '7'
  when '7'
    $arr[i] = '3'
    increment(i+1)
  end
end

cnt = 0
while true do
  cnt += 1 if $arr.include?('7') && $arr.include?('5') && $arr.include?('3')
  increment(0)
  # puts $arr.join(',')
  i = $arr.reverse.join('').to_i
  # puts i
  break if i > N

end
puts cnt
