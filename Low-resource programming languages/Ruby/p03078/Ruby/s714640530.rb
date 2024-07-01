X, Y, Z, k = gets.split.map(&:to_i)

A = gets.split.map(&:to_i).sort.reverse.freeze
B = gets.split.map(&:to_i).sort.reverse.freeze
C = gets.split.map(&:to_i).sort.reverse.freeze

class Choice
  def initialize(p, q, r)
    @p, @q, @r = p, q, r
  end

  def deliciousness
    @deliciousness ||= A[@p] + B[@q] + C[@r]
  end

  alias to_i deliciousness

  def to_a
    [@p, @q, @r]
  end

  def <=>(other)
    self.deliciousness <=> other.deliciousness
  end

  def ==(other)
    self.to_a == other.to_a
  end

  def next_choices
    return enum_for(:next_choices) unless block_given?
    yield self.class.new(@p + 1, @q, @r) if @p < X - 1
    yield self.class.new(@p, @q + 1, @r) if @q < Y - 1
    yield self.class.new(@p, @q, @r + 1) if @r < Z - 1
  end
end

choices = [Choice.new(0, 0 , 0)]

k.times do
  target = choices.max
  puts target.deliciousness
  choices.delete(target)
  choices.push(*target.next_choices.map(&:itself))
end
