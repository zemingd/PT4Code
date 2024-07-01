X, Y, Z, K = gets.split(" ").map(&:to_i)
A = gets.split(" ").map(&:to_i)
B = gets.split(" ").map(&:to_i)
C = gets.split(" ").map(&:to_i)

# def swap(arr, i, j)
#   tmp = arr[i]
#   arr[i] = arr[j]
#   arr[j] = tmp
# end

# def push(arr, ix, val)
#   arr[ix] = val
#   while ix > 1 && arr[ix / 2] < arr[ix]
#     swap(arr, ix, ix / 2)
#     ix /= 2
#   end
# end

# def pop(arr)
#   top = arr[1]
#   last = arr.pop
#   arr[1] = last
#   ix = 1
#   while ix * 2 < arr.size
#     if (ix * 2 + 1) < arr.size
#       v0 = arr[ix]
#       v1 = arr[ix * 2]
#       v2 = arr[ix * 2 + 1]
#       if v0 < v1
#         if v1 < v2
#           swap(arr, ix, ix * 2 + 1)
#           ix = ix * 2 + 1
#         else
#           swap(arr, ix, ix * 2)
#           ix = ix * 2
#         end
#       elsif v0 < v2
#         swap(arr, ix, ix * 2 + 1)
#         ix = ix * 2 + 1
#       else
#         break
#       end
#     else
#       v0 = arr[ix]
#       v1 = arr[ix * 2]
#       if v0 < v1
#         swap(arr, ix, ix * 2)
#         ix = ix * 2
#       else
#         break
#       end
#     end
#   end

#   return top
# end

arr = [0]
A.each do |a|
  B.each do |b|
    C.each do |c|
      ix = arr.size
      val = a + b + c
      if ix < K
        arr << val
      else
        if val > arr[0]
          arr[0] = val
          arr.sort!
        end
      end
    end
  end
end
# puts

K.times do
  # puts pop(arr)
  puts arr.pop
end
