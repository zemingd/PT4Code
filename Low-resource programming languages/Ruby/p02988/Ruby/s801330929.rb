n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
cnt=0

i_bf = arr.shift
i    = arr.shift
i_af = nil

arr.each do |n|
  i_af = n
  cnt+=1 if (i_bf < i and i < i_af) or (i_bf > i and i > i_af)
  i_bf = i
  i = i_af
end
puts cnt