def fact(n)
  (1..n).to_a.inject(1) {|f, i| f*i}
end

n = gets.chomp.to_i()
nums = gets.chomp.split.map(&:to_i)
a_list = []
cnt = 0
while true do
  new_array = []
  buf = nums
  i = 0
  while buf.length > 0 do
    r = rand(n-i)
    new_array << buf[r]
    buf.delete_at(r)
    i+=1
  end
  unless a_list.include?(new_array) then
    a_list << new_array
    
    ans = []
    n.times do |i|
      if i == 0 then
        ans << ((new_array[-1] ^ new_array[i+1]) == new_array[i])
      elsif i == n-1 then
        ans << ((new_array[i-1] ^ new_array[0]) == new_array[i])
      else
        ans << ((new_array[i-1] ^ new_array[i+1]) == new_array[i])
      end
    end
    break if ans.all? {|f| f == true }
  end
  cnt+=1
  break if cnt == fact(n)
end
puts ans.all? {|f| f == true } ? "Yes" : "No"
