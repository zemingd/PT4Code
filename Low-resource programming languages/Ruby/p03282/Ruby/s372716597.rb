s=gets.chars.map &:to_i
k=gets.to_i
x=0
s.each do|i|
  if i!=1
    puts i
    exit
  else
    x+=1
    if k==x
      puts 1
      exit
    end
  end
end
