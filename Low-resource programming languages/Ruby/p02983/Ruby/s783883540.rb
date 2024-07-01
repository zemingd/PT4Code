def main
  l, r = gets.chomp.split(' ').map(&:to_i)
  return 0 if l == 0

  diff_num = l - r
  #  2019で割った余りが最小の数字同士の掛け算
  return 0 if diff_num > 2019

  min = [2019, 2019]
  l.upto(r) do |num|
    ans = num % 2019
    min << ans
    return 0 if ans.zero?
  end
  
  a = min.sort!.shift
  b = min.shift
  a * b
end

puts main