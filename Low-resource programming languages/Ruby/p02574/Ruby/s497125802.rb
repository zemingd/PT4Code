# エラトステネスの篩で素数列挙して高速に素因数分解したい！
# ref: https://atcoder.jp/contests/abc177/editorial/82
class PrimeDivWithSieve
  def initialize(n)
    @sieve = []
    @elements = Hash.new{|hash, key| hash[key] = []}
    (2..n).each do |i|
      next if @elements[i]
      @sieve << i
      @elements[i] << i

      sieve_target = i * 2
      while sieve_target <= n do
        @elements[sieve_target] << i
        sieve_target += i
      end
    end
  end

  def element(num)
    @elements[num]
  end
end




_n = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)
divisor = PrimeDivWithSieve.new(1_000_010)
common_elms = divisor.element(arr[0])
all_elms = {}
common_elms.each do |i|
  all_elms[i] = true
end

pair = true
set = true
arr[1..-1].each do |i|
  crr_elms = divisor.element(i)
  if pair
    crr_elms.each do |i|
      break pair = false if all_elms[i]
      all_elms[i] = true
    end
  end
  if set
    common_elms = (common_elms & crr_elms)
    set = !common_elms.empty?
  end
end

if pair
  puts "pairwise coprime"
elsif set
  puts "setwise coprime"
else
  puts "not coprime"
end