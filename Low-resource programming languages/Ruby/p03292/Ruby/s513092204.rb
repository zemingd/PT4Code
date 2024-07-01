a = gets.strip.split.map(&:to_i)

perms = [
    [a[0], a[1], a[2]],
    [a[0], a[2], a[1]],
    [a[1], a[0], a[2]],
    [a[1], a[2], a[0]],
    [a[2], a[0], a[1]],
    [a[2], a[1], a[0]],
]

def cost(p)
    (p[0] - p[1]).abs + (p[1] - p[2]).abs
end

puts perms.map { |p| cost(p) }.min