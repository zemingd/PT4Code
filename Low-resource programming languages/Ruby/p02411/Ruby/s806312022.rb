while true do
  num=Array.new(3)
  str=gets.chomp
  number=str.split
  num[0]=number[0].to_i
  num[1]=number[1].to_i
  num[2]=number[2].to_i
  if num[0]==-1 && num[1]==-1 && num[2]==-1 then
    break
  else
    if num[0]==-1 || num[1]==-1 then
      puts "F"
    elsif num[0]+num[1]>=80 then
      puts "A"
    elsif num[0]+num[1]>=65 then
      puts "B"
    elsif num[0]+num[1]>=50 then
      puts "C"
    elsif num[0]+num[1]>=30 then
      if num[2]>=50 then
        puts "C"
      else
        puts "D"
      end
    else
      puts "F"
    end
  end
end