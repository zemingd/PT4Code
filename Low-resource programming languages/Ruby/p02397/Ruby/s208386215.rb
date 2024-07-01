while true
  a = get.split(" ").map &:to_i
  if a[0]==0 && a[1]==0
    break
  end
  puts a.sort.join(" ")
end