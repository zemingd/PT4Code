while true do
  str=gets.chomp
  if str=='0' then
    break
  else
    char=str.split(//)
    len=char.length
    num=Array.new
    sum=0
    for i in 0...len do
      num[i]=char[i].to_i
      sum+=num[i]
    end
    puts sum
  end
end