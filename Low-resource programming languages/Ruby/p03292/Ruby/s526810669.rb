a=gets.chomp.split(" ").map { |e| e.to_i  }
a.sort!

def absolute(a,b)
  if a-b>0
    return a-b
  else
    return b-a
  end

end


cost = 0

for i in 1..2 do
  cost += absolute(a[i],a[i-1])
end

puts cost