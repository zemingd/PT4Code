N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)

A.sort! {|a, b| b <=> a }

temp = Hash.new(0)
av = []
ans = 0
A.each do |a|
  temp[a] += 1
  if temp[a] % 2 == 0
    av << a
  end

  if av.length == 2
    ans = av.inject(:*)
    break
  end
end

print ans
