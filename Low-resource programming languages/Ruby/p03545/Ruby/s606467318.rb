arr = gets.chomp.split('').map(&:to_i)

(0...(1 << 3)).each do |i|
  strs = [arr[0].to_s]
  cur = arr[0]
  (0...3).each do |j|
    if 1 & (i >> j) == 1
      strs.push('+')
      cur += arr[j + 1]
    else
      strs.push('-')
      cur -= arr[j + 1]
    end
    strs.push(arr[j + 1].to_s)
  end
  if cur == 7
    puts strs.join('') + '=7'
    exit 0
  end
end