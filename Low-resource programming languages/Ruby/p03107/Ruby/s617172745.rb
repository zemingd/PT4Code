zero = 0
one = 0
$stdin.each_char do |c|
  if c == "0"
    zero += 1
  else
    one += 1
  end
end

cnt = if zero >= one
        one
      else
        zero
      end

puts cnt * 2
