h,w=gets.split.map(&:to_i)
strs=(1..h).map{gets.chomp}

class NilClass
  def [](i); end
end

(0...h).each do |i|
  (0...w).each do |j|
    next unless strs[i][j]=='#'
    flg=false
    dxs=[0, 0, 1,-1]
    dys=[1,-1, 0, 0]
    dxs.each_with_index do |dx, k|
      x=i+dx
      y=j+dys[k]
      next if x<0 || y<0
      if strs[x][y]=='#'
        flg=true
      end
    end
    unless flg
      puts 'No'
      exit
    end
  end
end
puts 'Yes'