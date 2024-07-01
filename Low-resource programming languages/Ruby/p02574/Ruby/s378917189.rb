class PrimeDivWithSieve
  def initialize(n)
    @sieve = (0..n).to_a
    @prime_list_cache = nil
    @sieve[0] = -1
    @sieve[1] = -1
    (4..n).step(2).each do |i|
      @sieve[i] = 2
    end
    (3..Math.sqrt(n).floor).step(2).each do |i|
      next if @sieve[i] != i
      ((i * i)..n).step(i * 2).each do |j|
        @sieve[j] = i if @sieve[j] == j
      end
    end
  end

  # Integer#prime_division と同じ値を返すようにする
  # https://docs.ruby-lang.org/ja/latest/method/Integer/i/prime_division.html
  def prime_division(n)
    result = []
    while n != 1 do
      p = @sieve[n]
      e = 0
      while n % p == 0 do
        n /= p
        e += 1
      end
      result.push([p, e])
    end
    result
  end

  def element(n)
    @element[n] ||= prime_division(n).map(&:first)
  end
  
  def prime_list
    if not @prime_list_cache then
        @prime_list_cache = []
        (2..n).each do |i|
            @prime_list_cache.push(i) if @sieve[i] == i
        end
    end
    @prime_list_cache
  end
end

_n = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

divisor = PrimeDivWithSieve.new(1_000_000)
common_elms = divisor.element(arr[0])
all_elms = {}
common_elms.each do |i|
  all_elms[i] = true
end

pair = true
set = false
arr[1..-1].each do |i|
  crr_elms = divisor.element(i)
  if pair
    crr_elms.each do |i|
      break pair = false if all_elms[i]
      all_elms[i] = true
    end
  end
  if !set
    common_elms = (common_elms & crr_elms)
    set = common_elms.empty?
  end
end

if pair
  puts "pairwise coprime"
elsif set
  puts "setwise coprime"
else
  puts "not coprime"
end