def solve(n, m, data)
  return data.group_by { |d| d[0] }
    .map { |k, v| [k, v.map!(&:last).sort!] }
    .map! do |p, years|
    years.map!.with_index {|_, i| "#{sprintf('%06d', p)}#{sprintf('%06d', i + 1)}"}
  end.flatten
end

def main
  stdin = STDIN.gets
  nm = stdin.split(/\s/)
  n = nm[0].to_i
  m = nm[1].to_i

  data = []
  (0..m).each do
    stdin = STDIN.gets
    pm = stdin.split(/\s/).map!(&:to_i)
    data.push(pm)
  end

  result = solve(n, m, data)
  result.each do |r|
    puts r
  end
end

main