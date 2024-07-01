class Array
  def quick_sort
    return self if length <= 1
    base = pop
    smaller, bigger = partition { |e| e < base }
    push base
    smaller.quick_sort + [base] + bigger.quick_sort
  end
end

n = gets.to_i
xs = gets.chomp.split.map(&:to_i)
i = 0
ss = Marshal.load(Marshal.dump(xs)).quick_sort
n.times do |i|
  ds = Marshal.load(Marshal.dump(ss))
  ds.delete_at(ss.index(xs[i]))
  puts ds[n/2 - 1]
end
