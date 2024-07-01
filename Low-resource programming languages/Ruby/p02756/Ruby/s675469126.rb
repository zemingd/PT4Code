# https://atcoder.jp/contests/abc158/tasks/abc158_d



S = gets.chomp
Q = gets.to_i

reverse = false
prefix = ''
suffix = ''
Q.times do
  arr = gets.chomp.split
  if arr[0] == '1'
    reverse = !reverse
  else
    if arr[1] == '1'
      if reverse
        suffix << arr[2]
      else
        prefix << arr[2]
      end
    else
      if reverse
        prefix << arr[2]
      else
        suffix << arr[2]
      end
    end
  end
end

str = prefix.reverse + S + suffix
puts reverse ? str.reverse : str
