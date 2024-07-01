class WhiteCellsAnswer
  def self.white_cells(h1, w1, h2, w2)
    (h1 - h2) * (w1 - w2)
  end
end

data = STDIN.read.split(/\s+/).map(&:to_i)
puts WhiteCellsAnswer.white_cells(data)