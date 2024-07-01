N_M = gets.chomp
N = N_M[0].to_i
M = N_M[2].to_i

arr = Array.new(N)

M.times{
  s_c = gets.chomp
  s = s_c[0].to_i
  c = s_c[2].to_i
  if arr[s - 1] && arr[s - 1] != c then
    puts "-1"
    exit
  end
  arr[s - 1] = c
}
  
if arr.count > 1 && arr[0] == 0 then
    puts "-1"
    exit
end
  
if !arr[0] then
  arr[0] = 1
end

ret = arr.reduce(""){|sum, i|
  if (i) then
    sum = sum << i.to_s
  else
    sum = sum << "0"
  end
}

puts ret