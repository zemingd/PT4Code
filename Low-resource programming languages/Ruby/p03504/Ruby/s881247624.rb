N, C = gets.split.map(&:to_i)
channels = N.times.map { gets.split.map(&:to_i) }
c_list = channels.group_by { |_, _, c| c }

MAX_T = 10 ** 5 + 2

channel_query = (1..C).map do |c|
  next if c_list[c].nil?

  record = Array.new(MAX_T, 0)

  c_list[c].each do |s, t, _|
    record[s] += 1
    record[t + 1] -= 1
  end

  query = []
  s = nil
  t = 0

  (1...MAX_T).each do |i|
    t += record[i]

    if t > 0 && s.nil?
      s = i
    elsif t == 0 && !s.nil?
      query << [s, i - 1]
      s = nil
    end

    record[i] += record[i - 1]
  end

  query
end.compact

recorder = Array.new(2 * MAX_T, 0)

channel_query.each do |query_list|
  query_list.each do |s, t|
    recorder[2 * s - 1] += 1
    recorder[2 * t + 1] -= 1
  end
end

ans = 0

(1...(2 * MAX_T)).each do |i|
  recorder[i] += recorder[i - 1]
  ans = recorder[i] if ans < recorder[i]
end

puts ans
