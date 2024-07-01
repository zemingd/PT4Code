class Block
  def initialize(color)
    @color = color
    @size = 1
  end

  def add
    @size += 1
  end

  def sz
    return @size
  end

  def col
    return @color
  end
end

N, K = gets.chomp.split.map(&:to_i)
S = gets.chomp

cur = Block.new(2)
blocks = []
N.times do |i|
  if i == 0 or cur.col != S[i].to_i
    blocks << cur
    cur = Block.new(S[i].to_i)
  else
    cur.add
  end

  blocks << cur if i == N - 1
end
blocks = blocks[1..-1]
b_size = blocks.length

block0_num = 0
blocks.each do |b|
  block0_num += 1 if b.col == 0
end

if block0_num <= K
  puts N
else
  ans = 0
  (0...2*K).each do |i|
    ans += blocks[i].sz
  end
  ans += blocks[2*K].sz if 2*K < b_size and blocks[2*K].col == 1

  canditate = ans
  (1..(b_size - 2*K)).each do |i|
    canditate -= blocks[i - 1].sz  
    canditate += blocks[i - 1 + 2*K].sz if blocks[i - 1 + 2*K].col == 0
    canditate += blocks[i + 2*K].sz if i + 2*K < b_size and blocks[i + 2*K].col == 1
    ans = [ans, canditate].max
  end

  puts ans
end