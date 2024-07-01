N,M = gets.chomp.split(" ").map(&:to_i)
arr = readlines.map{|n| n.chomp.to_i}
# p arr

class Integer
    def combination(k)
      return 1 if k.zero?
  
      (self - k + 1..self).inject(:*) / k.factorial
    end
  
    def permutation(k)
      return 1 if k.zero?
  
      (self - k + 1..self).inject(:*)
    end
  
    def factorial
      return 1 if self.zero?
  
      (1..self).inject(:*)
    end
end

=begin
def step_sum(step)
    sum = 0
    return 1 if step == 0
    step.times do |i|
        one = i
        two = step - i
        break if step/2 > two
        sum += two.combination one
    end
    return sum
end
=end
def step_sum(step)
    # sum = 0
    # return 1 if step == 0
    pprev = 1
    prev = 2
    cur = 0
    return 1 if step == 0
    return 1 if step == 1
    return 2 if step == 2
    (step-2).times do |i|
        cur = pprev + prev
        pprev = prev
        prev = cur
    end
    return cur
end

prev = 0
ans = 1
arr << N+1
arr.each do |cur|
    if prev == cur
        ans = 0
        break
    end
    step = cur-1-prev
    
    ans*=step_sum(step)
    # p [step, ans]
    prev = cur+1
end

puts ans % 1000000007