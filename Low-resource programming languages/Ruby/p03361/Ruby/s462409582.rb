h,w=gets.chomp.split(" ").map { |e| e.to_i }
s=h.times.map { gets.chomp.split("").map { |e| e.to_s }}

def func(a,b)
  if b=="#"
    return true
  end

  return false

end

def around_grid_squara(h,w,a,i,j)

  if 1 <= i
    if func(a[i][j],a[i-1][j])
      return true
    end
  end

  if i <= h-2
    if func(a[i][j],a[i+1][j])
      return true
    end
  end

  if 1 <= j
    if func(a[i][j],a[i][j-1])
      return true
    end
  end

  if j <= w-2
    if func(a[i][j],a[i][j+1])
      return true
    end
  end

return false

end



for i in 0..h-1 do
  for j in 0..w-1 do
    if s[i][j] == "#"
      if !around_grid_squara(h,w,s,i,j)
        puts "No"
        exit
      end
    end
  end
end


puts "Yes"
