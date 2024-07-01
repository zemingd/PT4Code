class ConnectionManager
  def initialize(n)
    @groups = Array.new(n + 1) { |i| [i] }
  end

  def connect(a, b)
    raise if connected?(a, b)

    new_group = @groups[a] + @groups[b]
    new_group.each do |i|
      @groups[i] = new_group
    end
  end

  def connected?(a, b)
    @groups[a].object_id == @groups[b].object_id
  end

  def sizeof(a)
    @groups[a].length
  end
end


N, M = STDIN.gets.split.map(&:to_i)
Bridges = STDIN.each_line.map { |l| l.split.map(&:to_i) }

inconv = []
inconv[M - 1] = N * (N - 1) / 2

cm = ConnectionManager.new(N)

(M - 1).downto(1) do |i|
  a, b = Bridges[i]

  diff = case
         when cm.connected?(a, b)
           0
         else
           t = cm.sizeof(a) * cm.sizeof(b)
           cm.connect(a, b)
           t
         end

  inconv[i - 1] = inconv[i] - diff
end

puts inconv
