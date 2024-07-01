lass Solver
  def initialize(a:, b:, c:, bamboos:)
    @mp = 0
    @solved = Array.new(3) { false }
    @bamboos = bamboos
    @answers = [a, b, c]

  end

  def solve
    one_action
    p @solved
    p @bamboos
    if @solved.all? {|v| v}
      puts "end"
    else
      puts "mada"
    end
  end
  # そのままのは？
  # 次の10pt、最も効率良く使うには？
  # +-10以内のは？とくに、近いのは？
  # ダメなら足す
  def one_action
    exactly_match
    nearly_equal_match
  end

  def exactly_match
    @answers.each_with_index do |number, i|
      if @bamboos.include? number
        @solved[i] = true
        index = @bamboos.index(number)
        @bamboos.delete_at(index)
      end
    end
  end

  def nearly_equal_match
    diffs = []
    @answers.each_with_index do |number, i|
      if @solved[i]
        diffs[i] = 10000 # l <= 1000
        next
      end
      diffs[i] = number - @bamboos.min_by{|x| (number - x).abs}
    end

    if diffs.min < 10
      @mp += diffs.min
      @solved[diffs.index(diffs.min)] = true
      @bamboos.delete_at(diffs.index(diffs.min))
    end
  end

  def plus
    diffs = []
    @answers.each_with_index do |number, i|
      if @solved[i]
        diffs[i] = 10000 # l <= 1000
        next
      end
      diffs[i] = number - @bamboos.min_by{|x| (number - x).abs}
    end

    if diffs.min < 10
      @mp += diffs.min
      @solved[diffs.index(diffs.min)] = true
      @bamboos.delete_at(diffs.index(diffs.min))
    end
  end
end

N, A, B, C = gets.chomp.split.map(&:to_i)
bamboos = Array.new(N) { gets.chomp.to_i }.sort
solver = Solver.new(a: A, b: B, c: C, bamboos: bamboos)
solver.solve