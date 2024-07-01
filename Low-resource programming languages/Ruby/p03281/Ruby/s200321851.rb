n = gets.to_i
ans = 0
if n < 105
  ans = 0
else
  if n < 145
    ans = 1
  else
    if n < 165
      ans = 2
    else
      if n < 189
        ans = 3
      else
        ans = 4
      end
    end
  end
end
puts ans