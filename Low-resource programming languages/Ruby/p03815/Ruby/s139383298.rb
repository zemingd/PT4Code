input = $<.gets.to_i

def hoge(r)
  return 0 if r == 0
  if r <= 6
    return 1
  elsif 7 <= r && r <= 11
    return 2
  end
end

ret = (input / 11) * 2 + hoge(input % 11)
puts ret