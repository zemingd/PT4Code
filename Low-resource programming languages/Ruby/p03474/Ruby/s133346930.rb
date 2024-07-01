A, B = gets.split.map(&:to_i)
S = gets.chomp

begin
  s = S.split("-")

  if ((s[0].length == A) and (s[1].length == B)) then
    ans = "Yes"
  else
    ans = "No"
  end

rescue NoMethodError
  ans = "No"
end

puts ans
