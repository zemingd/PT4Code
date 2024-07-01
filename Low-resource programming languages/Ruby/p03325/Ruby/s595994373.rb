def progression_operation(arr)
  count = 0
  while true do
    index_dev2 = -1
    arr.each_with_index do | n, i |
      if (n%2 == 0) then
        index_dev2 = i
        arr[i] = arr[i] >> 1
        count += 1
      end
    end
    if index_dev2 == -1 then
      break
    end
  end
  p count
end

input = gets()
input = gets()
progression = input.split(" ")
progression.map!(&:to_i)

progression_operation(progression)
