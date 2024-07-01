class Repaint
  def initialize(h, w, g)
    @height = h
    @width = w
    @grid = g
  end

  def find_sharp_4(r, c)
    # 上のセル
    return true if 1 <= r && @grid[r-1][c] == "#"

    # 下のセル
    return true if r < @height-1 && @grid[r+1][c] == "#"

    # 左のセル
    return true if 1 <= c && @grid[r][c-1] == "#"

    # 右のセル
    return true if c < @width-1 && @grid[r][c+1] == "#"

    # ここまで来た＝4近傍どこにも # がなかった
    # puts "r:c = (#{r}, #{c})"
    false
  end

  def judge_all
    0.upto(@height-1) do |r|
      0.upto(@width-1) do |c|
        return false if @grid[r][c] == "#" && !find_sharp_4(r, c)
      end
    end

    # ここまで来た＝全部OKだった
    true
  end

end

h, w = gets.split.map(&:to_i)
# puts "HW: #{h}, #{w}"

grid = []
while (row = gets&.chomp&.chars)
  # puts row
  grid << row
end
# pp grid

rp = Repaint.new(h, w, grid)
puts rp.judge_all ? "Yes" : "No"
