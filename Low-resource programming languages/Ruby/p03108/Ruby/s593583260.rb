require 'matrix'

N, M = gets.chomp.split.map(&:to_i) # No. of islands, bridges
bridges = []
M.times do
  bridges.push gets.chomp.split.map(&:to_i)
end

def build_reach_mat (bridges) # 可到達行列を作る
  mat = Matrix.build(N) do |row, col|
    if row == col
      1
    elsif bridges.include? [row+1, col+1]
      1
    elsif bridges.include? [col+1, row+1]
      1
    else
      0
    end
  end
  mat
end

def calc_reach_mat(mat)
  nxt_mat = mat
  begin
    pre_mat = nxt_mat
    tmp_mat = pre_mat * mat
    nxt_mat = Matrix.build(N) do |row, col|
      tmp_mat[row, col] > 0 ? 1 : 0
    end
    #print("2: #{nxt_mat}\n")
  end until nxt_mat == pre_mat
  nxt_mat
end

M.times do
  #print "=========\n"
  bridges.shift # 最初の橋を落とす
  mat0 = build_reach_mat(bridges)
  #print("1: #{mat0}\n")
  matf = calc_reach_mat(mat0)
  n = matf.to_a.flatten.count(0) / 2 # 可到達行列の 0 の数（2分の1）
  print("#{n}\n")
end
