digits = Array.new
while(true) do
  data = gets()
  if (data == "\n" or data == "\n\r") then break end
  x, y = data.split().map{|x| x.to_i}
  digits.push((x + y).to_s.length)
end