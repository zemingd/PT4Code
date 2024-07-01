a = gets.strip.to_i
def judge(a)
  Array(2..(a-1)).each do |num|
    if a%num == 0
     return false
    end
  end
  return true
end


while true do
  a+= 1
  if judge(a)
    break
  end

end
puts a
