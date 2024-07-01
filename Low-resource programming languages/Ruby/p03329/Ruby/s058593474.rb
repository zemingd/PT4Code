# Strange Bank
# https://atcoder.jp/contests/abc099/tasks/abc099_c

class MemoizeRecursive
  SIXES = [1, 6, 36, 216, 1296, 7776, 46656].freeze
  NINES = [1, 9, 81, 729, 6561, 59049].freeze

  def main
    @upper_w = gets.chomp.to_i

    @memo = Array.new(@upper_w+1)

    ans = recurse(@upper_w)
    puts ans
  end

  def recurse(rest)
    return rest if rest < 6

    # 既に計算済みの場合はそれを返す
    return @memo[rest] unless @memo[rest].nil?

    # 6円シリーズのrest内最大金額と9円シリーズのrest内最大金額を試す
    result = @upper_w

    w = SIXES.select{|i| i <= rest}.max
    result = [recurse(rest - w) + 1, result].min

    w = NINES.select{|i| i <= rest}.max
    result = [recurse(rest - w) + 1, result].min

    @memo[rest] = result
  end
end

if __FILE__ == $0
  MemoizeRecursive.new.main
end
