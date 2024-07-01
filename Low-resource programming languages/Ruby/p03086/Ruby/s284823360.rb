s = gets.chomp

ACGT = %w[A C G T].freeze

def main s
  ans = []
  count = 0
  s.each_char.to_a.map do |c|
    if ACGT.include? c
      count += 1
    else
      ans.push count
      count = 0
    end
  end

  ans.max
end

main s