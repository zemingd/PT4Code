A,B = gets.strip.split.map(&:to_i)
i = 1
until (i*0.08).floor==A && (i*0.10).floor==B do
  i += 1
  if i > 1250 then
    break
  end
end
if i > 1250 then
  puts "-1"
else
  puts i
end