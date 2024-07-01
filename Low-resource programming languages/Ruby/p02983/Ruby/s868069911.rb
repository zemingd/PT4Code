def main
  l, r = gets.chomp.split(' ').map(&:to_i)

  rest_num = []

  l.upto(r) do |num|
    ans = num % 2019
    rest_num << ans
    return 0 if ans.zero?
  end
  
  a = rest_num.sort!.shift
  b = rest_num.shift
  a * b
end

puts main