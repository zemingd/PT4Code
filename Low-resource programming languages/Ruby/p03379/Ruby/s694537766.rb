N = gets.to_i
x_list = gets.split.map(&:to_i)

def selection_sort_ruby(ary)
  ary_with_index = ary.zip(0...ary.length)
  (0...ary.length).each{|ix|
    # 最小値を探す
    min = ary_with_index[ix..-1].min_by{|num, ix| num}

    # 最小値と ix を交換する
    ary_with_index[ix][0], ary_with_index[min[1]][0] = min[0], ary_with_index[ix][0]
  }
  ary_with_index.map{|num, ix| num}
end


for i in 0..N-1 do
    tmp_list = Marshal.load(Marshal.dump(x_list))
    tmp_list.slice!(i)
    sorted_list = selection_sort_ruby(tmp_list)
    puts(sorted_list[(sorted_list.size)/2])
end