stac_in = gets.split(" ")
stac = Array.new()
stac_in.each do |ele|
  
  if ele == "+" || ele =="-" || ele =="*"
    a = stac.pop
    b = stac.pop
    c = case ele
        when "*"
        a*b
        when "+"
        a+b
        when "-"
        b-a
        end
    stac.push(c)
  else
    stac.push(ele.to_i)  
  end  
end
printf("%d\n",stac.last)