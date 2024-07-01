total = gets
num_arr = gets.chomp!.split(' ').map{|i|i.to_i}

count = 1

odd_hash = {} # 奇数番目の要素だけでできたハッシュ
even_hash = {} # 偶数番目の要素だけでできたハッシュ

# 偶数番目/奇数番目のみの要素だけでできた配列を作る
num_arr.each do |i|
  if ((count % 2) == 1) then
    if odd_hash[i] == nil then odd_hash[i] = 1
    else odd_hash[i] += 1
    end
  else 
    if even_hash[i] == nil then even_hash[i] = 1
    else even_hash[i] += 1
    end
  end
  count = count + 1
end

#pp odd_hash
#pp even_hash

odd_max = odd_hash[ num_arr[0] ] # 奇数番目の要素の中で最大頻出の要素の数が入る
odd_max_name = num_arr[0] # 奇数番目の要素の中で最大頻出の要素の名前が入る
#pp "odd_max = #{odd_max}, odd_max_name = #{odd_max_name}"
odd_hash.each do |name,n|

    if n > odd_max then
        odd_max = n
        odd_max_name = name
    end
end
if (num_arr.length%2 == 0) then
    num_of_chenge_odd = num_arr.length/2 - odd_max # 奇数の削除する個数
else  num_of_chenge_odd = num_arr.length/2 + 1 - odd_max
end

even_max = even_hash[ num_arr[1] ] # 偶数番目の要素の中で最大頻出の要素の数が入る
even_max_name = num_arr[1] # 偶数番目の要素の中で最大頻出の要素の名前が入る
even_hash.each do |name,n|
    if n > even_max then
        even_max = n
        even_max_name = name
    end
end

num_of_chenge_even = num_arr.length/2 - even_max # 偶数の削除する個数

if even_max_name != odd_max_name then # 二つの最頻値が異なる場合はそのまま提出する
    puts (num_of_chenge_odd + num_of_chenge_even)
else # 二つの最頻値が同じ場合、
    # 現在の最頻値を削除する
    odd_hash.delete(odd_max_name)
    even_hash.delete(even_max_name)
    #pp "after delete, odd_hash = #{odd_hash}, even_hash = #{even_hash}, bool = #{odd_hash.empty?}"

    num_of_chenge_odd2 = 0
    num_of_chenge_even2 = 0

    if(odd_hash.empty? && even_hash.empty?) then
        puts odd_max
    elsif odd_hash.empty? then 
        even_max = 0 # 偶数番目の要素の中で最大頻出の要素の数が入る
        even_max_name = nil # 偶数番目の要素の中で最大頻出の要素の名前が入る
        
        even_hash.each do |name,n|
            if n > even_max then
                even_max = n
                even_max_name = name
            end
        end
        num_of_chenge_even2 = num_of_chenge_even + even_hash.length - even_max
        puts num_of_chenge_even2 + num_of_chenge_odd
    elsif even_hash.empty? then
        odd_max = 0 # 奇数番目の要素の中で最大頻出の要素の数が入る
        odd_max_name = nil # 奇数番目の要素の中で最大頻出の要素の名前が入る
        
        odd_hash.each do |name,n|
            if n > odd_max then
                odd_max = n
                odd_max_name = name
            end
        end
        num_of_chenge_odd2= num_of_chenge_odd + odd_hash.length - odd_max # 奇数の削除する個数
        puts num_of_chenge_odd2 + num_of_chenge_even
    else
        odd_max = 0 # 奇数番目の要素の中で最大頻出の要素の数が入る
        odd_max_name = nil # 奇数番目の要素の中で最大頻出の要素の名前が入る
        
        odd_hash.each do |name,n|
            if n > odd_max then
                odd_max = n
                odd_max_name = name
            end
        end
        num_of_chenge_odd2= num_of_chenge_odd + odd_hash.length - odd_max # 奇数の削除する個数
        
        even_max = 0 # 偶数番目の要素の中で最大頻出の要素の数が入る
        even_max_name = nil # 偶数番目の要素の中で最大頻出の要素の名前が入る
        
        even_hash.each do |name,n|
            if n > even_max then
                even_max = n
                even_max_name = name
            end
        end
        num_of_chenge_even2 = num_of_chenge_even + even_hash.length - even_max
        #pp "num_of_chenge_even = #{num_of_chenge_even}, num_of_chenge_even2 = #{num_of_chenge_even2}, num_of_chenge_odd = #{num_of_chenge_odd}, num_of_chenge_odd2 = #{num_of_chenge_odd2}"
        if (num_of_chenge_even + num_of_chenge_odd2) < (num_of_chenge_even2 + num_of_chenge_odd) then
            puts (num_of_chenge_even + num_of_chenge_odd2)
        else 
            puts (num_of_chenge_even2 + num_of_chenge_odd)
        end
    end
end

