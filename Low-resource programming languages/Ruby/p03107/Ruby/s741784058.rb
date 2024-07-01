inputs = STDIN.gets.chomp.split('').map(&:to_i)
len = inputs.length

def scan!(arr)
  i = 0
  flag = false
  while i < arr.length-1
    if arr[i] != arr[i+1]
      arr.delete_at(i)
      arr.delete_at(i)
      i = 0
    else
      i += 1
    end
  end
  flag
end

while true do
  break unless scan! inputs
end


puts len - inputs.length
