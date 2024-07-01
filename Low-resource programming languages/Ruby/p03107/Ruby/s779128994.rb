inputs = STDIN.gets.chomp.split('')
len = inputs.length

def scan!(arr)
  i = 0
  flag = false
  while i < arr.length-1
    if arr[i] != arr[i+1]
      arr.delete_at(i)
      arr.delete_at(i)

      flag = true
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

