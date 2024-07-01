n = gets.to_i

works = []
n.times do
  works.push(gets.split.map(&:to_i))
end

def main(works)
  works.sort! {|a, b| a[1] <=> b[1] }

  total = 0
  works.each do |work|
    total += work[0]
    if total > work[1]
      return 'No'
    end
  end
  return 'Yes'
end

print main(works)