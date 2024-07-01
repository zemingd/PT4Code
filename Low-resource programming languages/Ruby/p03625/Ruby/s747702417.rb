N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)

A.sort! {|a, b| b <=> a }

temp = []
av = []
ans = 0
A.each do |a|
  if temp.include?(a)
    temp.delete(a)
    l = av.length
    if l == 0
      av.push a
    elsif l == 1
      ans = av[0] * a
      break
    end
  else
    temp.pop
    temp.push a
  end
end

print ans