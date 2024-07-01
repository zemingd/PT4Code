n,m=gets.chomp.split(" ").map(&:to_i)
arr = Array.new(n){0}
m.times do
  b,c=gets.chomp.split(" ").map(&:to_i)
  arr[b-1] = arr[b-1] + 1 #配列の最初は0番目であることに注意
  arr[c-1] = arr[c-1] + 1
end
n.times do |k| #0-(m-1)の値を取るから注意
  puts(arr[k])
end