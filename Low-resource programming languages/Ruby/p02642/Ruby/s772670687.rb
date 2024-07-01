gets
a = gets.chomp.split(" ").map(&:to_i)

b = []
a.sort_by!{|e| e }
while(i = a.shift)
  del = false
  cnt = 0
  a.size.times do
    if a[cnt]%i == 0
      a.delete_at(cnt)
      if a[cnt] == i
        del = true
      end
    else
      cnt += 1
    end
  end
  if !del
    b << i
  end
end
puts("#{b.size}")