class JudgeStatusSummary
  def initialize(ars)
    @ars = ars
    @hs = {"AC" => 0, "WA" => 0, "TLE" => 0, "RE" => 0}
  end

  def solve
    @ars.each do |s|
      @hs[s] += 1
    end
    
    ["AC", "WA", "TLE", "RE"].each do |s|
      puts "#{s} x #{@hs[s]}"
    end
  end
end

def run
  n = gets.chomp.to_i
  ars = (0...n).each_with_object(Array.new(n)) do |i, a|
    a[i] = gets.chomp
  end
  
  JudgeStatusSummary.new(ars).solve
end

run

