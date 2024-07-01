while data = gets
  if data==nil then
    break
  end
  data2 = data.split(" ")
  result = data2[0].to_i+data2[1].to_i
  puts result.to_s.length
end