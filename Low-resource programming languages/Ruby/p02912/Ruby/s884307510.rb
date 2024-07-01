# 優先度付きキュー(priority queue)のクラス。最小ヒープ木による実装
# 最小ヒープ(つまり親ノードは子ノードよりも小さい)なので、根にあるのは最小値(もし、最大ヒープであれば根は最大値になる)
# 優先度付きキューとして持っている機能は、
# 1.キューに対して要素を優先度付きで追加する。(push)
# 2.最も高い優先度を持つ要素をキューから取り除き、それを返す。(pop)
# 3.最も高い優先度を持つ要素を取り除くことなく参照する。(peek)
# また、sum(内部的にはinject)があるので、合計値の算出に使うと圧倒的に速い
# 持っていない機能は
# 1.指定した要素を取り除くことなく優先度を変更する
class Heap
  attr_reader :size
  def initialize
    @heap = []
    @size = 0
  end
  def sum
    @heap.inject(:+)
  end
  def push(n)
    i = @size
    while i > 0
      pid = (i - 1) / 2
      break if n >= @heap[pid]
      @heap[i] = @heap[pid]
      i = pid
    end
    @heap[i] = n
    @size += 1
  end
  def pop
    top = @heap[0]
    @size -= 1
    n = @heap[@size]
    i = 0
    while i * 2 + 1 < @size
      cid1 = i * 2 + 1
      cid2 = cid1 + 1
      if cid2 < @size && @heap[cid2] < @heap[cid1]
        cid1 = cid2
      end
      break if @heap[cid1] >= n
      @heap[i] = @heap[cid1]
      i = cid1
    end
    @heap[i] = n
    top
  end
  def peek
    @heap[0]
  end
end

def input_n
  gets.to_i               # 単一整数
end

def input_s
  gets.chomp              # 文字列。chompを付けないと改行文字がついてくる
end

def input_a
  gets.split.map(&:to_i)  # スペースで区切られた複数の整数
end

def input_o(num)
  num.times.map { gets.to_i }  # 縦に並んだ複数の整数。たまにある
end

def output_f(num)
  puts sprintf("%.12f", num)
end

n, m = input_a
a = input_a

# 優先度付きキューの作成
q = Heap.new

# 優先度付きキューに値を順次追加(内部で成型するのでsortせずに突っ込む)
# 今回の場合は、最大値を取り出して操作したいので、入力する値すべてにマイナスをかけて、最小値/最大値を反転する
a.each do |num|
  q.push(-num)
end

# 最大金額の商品を順次取り出し、割引券で金額を半分にしていく
# この時、取り出した値はマイナスであるため、2で除算する前にマイナスをかけてプラスに戻しておき、pushする際はまたマイナスに戻す
# ※なぜマイナスからプラスに戻すのかは、例えば「3 / 2 = 1」だが「-3 / 2 = -2」となり、小数点の処理がプラスマイナスで違うから
m.times do
  max = q.pop
  q.push(-(-max / 2))
end

puts -q.sum