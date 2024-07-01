N=gets
a=gets.split.map(&:to_i)

def solve(i,a)
  c=a.select.with_index(1){|k,idx|idx % i ==0 && k==1}
  if c.size / 2 == a[i]
    [true, c.size, c]
  else
    [false, 0, []]
  end
end

a.each.with_index(1) do |e,i|
  s = solve(i,a)
  if s[0]
    puts s[1]
    puts s[2]*' '
    exit
  end 
end
