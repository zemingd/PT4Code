n,q = gets.split.map(&:to_i)
s = gets.chomp.chars
num = []
q.times do
  num << gets.split.map(&:to_i)
end

num.each do |i,j|
  counter = 0
  str = s[i-1..j-1]
  str.each_with_index do |k,l|
    if k == "A" && str[l+1] == "C"
      counter += 1
    end
  end
  puts counter
end
