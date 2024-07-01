a=gets.chomp.split("").map { |e| e.to_i }

def func(a,b,s)
  if s=="1"
    return a+b
  else
    return a-b
  end
end

for i in 0..7 do
  s=i.to_s(2).reverse
  acum = a[0]

  for j in 0..2 do
    acum = func(acum,a[j+1],s[j])
  end
  if acum == 7
    ans=a[0].to_s
    for i in 0..2 do
      if s[i] == "1"
        ans = ans + "+"
      else
        ans = ans + "-"
      end
      ans = ans + a[i+1].to_s
    end
    puts ans + "=7"
    exit
  end
end
