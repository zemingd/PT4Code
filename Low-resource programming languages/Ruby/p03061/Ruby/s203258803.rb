# 入力は全て整数である。
# 2<N<10**5
# 1<A<10**9

n = gets.to_i
key_num = n - 1
numbers = gets.chomp.split.map(&:to_i)
num_ary = []
uniq_num = numbers.uniq.size == 1
unless uniq_num
    n.times do |i|
      (1..numbers[i]).each do |j|
        num_ary << j if numbers[i] % j == 0
      end
    end
    
    ans = 0
    cnt = [0]
    num_ary.sort.reverse.each do |i|
      if i != cnt[0]
        cnt = [i]
      else
        cnt << i
        ans = cnt[0] if key_num == cnt.size
        break 
      end
    end
    puts ans
else
  puts numbers[0]
end
