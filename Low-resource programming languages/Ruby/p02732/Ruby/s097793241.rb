class Check
  def initialize(list)
    @list = list
    nums = {}
    list.each do |n|
      nums[n] ||= 0
      nums[n] += 1
    end
    @nums = nums
    @kumi = {}
  end

  def calc
    @list.each do |k|
      r = 0
      @nums.each do |n, s|
        if k == n
          r += kumi(s-1)
        else
          r += kumi(s)
        end
      end
      puts r
    end
  end

  private

  def kumi(num)
    @kumi[num] ||= num * (num - 1) / 2
  end
end

STDIN.gets
Check.new(STDIN.gets.split.map(&:to_i)).calc
