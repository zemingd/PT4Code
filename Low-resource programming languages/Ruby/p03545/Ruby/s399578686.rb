def calc(nums, pattern)
  n = nums.dup
  ret = n.dup.map(&:to_s)

  case pattern[0]
  when '+' then
    n[1] += n[0]
  when '-' then
    n[1] = n[0] - n[1]
  end

  case pattern[1]
  when '+' then
    n[2] += n[1]
  when '-' then
    n[2] = n[1] - n[2]
  end

  case pattern[2]
  when '+' then
    n[3] += n[2]
  when '-' then
    n[3] = n[2] - n[3]
  end

  if n[3] == 7
    ret[0] + pattern[0] + ret[1] + pattern[1] + ret[2] + pattern[2] + ret[3] + '=7'
  else
    nil
  end
end

n = gets.chars.map(&:to_i)

patterns = [
  ['+', '+', '+'],
  ['+', '+', '-'],
  ['+', '-', '+'],
  ['+', '-', '-'],
  ['-', '+', '+'],
  ['-', '+', '-'],
  ['-', '-', '+'],
  ['-', '-', '-']
]

patterns.each do |p|
  ans = calc(n, p)
  if !ans.nil?
    puts ans
    break
  end
end