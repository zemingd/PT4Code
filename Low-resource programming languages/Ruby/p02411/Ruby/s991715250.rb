module Rank 
  class Rank
    def initialize(str)
      @str = str.clone.freeze
    end

    def to_s
      @str
    end
  end

  A = Rank.new ?A
  B = Rank.new ?B
  C = Rank.new ?C
  D = Rank.new ?D
  F = Rank.new ?F

  private_constant :Rank
end

ReExamScore = Struct.new(:value) do
  def over50?
    value >= 50
  end
end

MidExamScore = Struct.new(:value) do
  def absent?
    value == -1
  end
end

FinalExamScore = Struct.new(:value) do
  def absent?
    value == -1
  end
end

AllScore = Struct.new(:mid_exam_score, :final_exam_score, :reexam_score) do
  def rank
    return Rank::F if any_absent?

    case mid_exam_score.value + final_exam_score.value
    when (80..100) then Rank::A
    when (65...80) then Rank::B
    when (50...65) then Rank::C
    when (30...50) then reexam_score.over50? ? Rank::C : Rank::D
    when ( 0...30) then Rank::F
    end
  end

  def any_absent?
    [mid_exam_score, final_exam_score].any?(&:absent?)
  end
end

loop {
  m,f,r = gets.split.map(&:to_i)

  break if [m,f,r].all?{|e| e == -1 }

  m = MidExamScore.new(m)
  f = FinalExamScore.new(f)
  r = ReExamScore.new(r)
  
  a = AllScore.new(m, f, r)

  puts a.rank.to_s
}

