def str_to_ary str
  appeared = ""
  ans = []
  str.chars.each do|ch|
    if appeared.include?(ch)
      ans << appeared.index(ch)
    else
      appeared += ch
      ans << appeared.index(ch)
    end
  end
  return ans
end

s = gets
t = gets

ans = "No"
ans = "Yes" if str_to_ary(s)==str_to_ary(t)
puts ans