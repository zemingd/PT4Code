x, n = gets.chomp.split.map(&:to_i)
p = gets.chomp.split.map(&:to_i).sort_by{|x| x}

ans = nil
i = 0
while ans == nil do
  if !p.include?(x-i)
    ans = x-i
  elsif !p.include?(x+i)
    ans = x+i
  end
  i += 1
end

print ans