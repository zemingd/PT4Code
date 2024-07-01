# 各桁毎に３５７の取り得る総数

# 各桁に３or５or７を割り当てて全列挙
# 桁数が３以上Nの桁数以下且つ
# 値がN以下且つ
# array.uniq.sizeが３以上
# の値が条件を満たす。
# その総数

N = gets.chomp

@count = 0
def dfs(arr = [])
  if arr.size >= 3
    if (num = arr.join('').to_i) <= N.to_i && arr.uniq.size >= 3
      # puts num
      @count += 1
    end
  end
  return if arr.size == N.size
  3.times do |i|
    dfs(arr.dup << 3 + 2 * i)
  end
end

dfs
puts @count