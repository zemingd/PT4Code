# Your code here!
gets.chop
arr = []
while(str = gets) do
    arr.push str.chop
end
uniq_arr = arr.uniq.sort
count_hash = Hash.new("")
max_cnt = 0
uniq_arr.map{|str|
  	cnt = arr.count(str)
  	max_cnt = cnt > max_cnt ? cnt : max_cnt
    count_hash[cnt] += str + "\n"
}
print count_hash[max_cnt].chop