H,W = (gets).split(" ").map{ |i| i.to_i }
$arr = []
$blks = []
H.times do |h|
    $arr[h] = Array.new(W) {0}
    ta = (gets).delete("\n").chars.map{ |c| c=='#' ? 1 : 0 }
    ta.each_with_index do |t,w|
        if t==1 then
            $arr[h][w] = 1
            $blks << [h,w,h+w]
        end
    end
end

def black_sort()
    $blks.sort! {|a,b| a[2]<=>b[2]}
end
black_sort()
$bb = $blks.length>16 ? 16 : $blks.length
#p $arr
#p $blks

# 距離マップを作って最大値を出せばいいはず
$dist_map = $arr.dup
$ds = Array.new($bb)
def get_dist(x,y)
  $blks.map.with_index do |bl,i|
      break if i >= $bb
      d = (y-bl[0]).abs + (x-bl[1]).abs
      $ds[i] = d
      $blks[i] = [bl[0],bl[1],d]
  end
  #puts "(#{x}, #{y})"
  #p $ds
  black_sort()
  return $ds.min
end

$arr.each_with_index do |arr,h|
  arr.each_with_index do |ar,w|
    if ar==1 then
      $dist_map[h][w] = 0
    else
      $dist_map[h][w] = get_dist(w, h)
    end
  end
end

#p $dist_map
puts $dist_map.flatten.max
