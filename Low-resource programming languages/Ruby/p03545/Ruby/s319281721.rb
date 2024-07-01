EXPECTD_RESULT = 7

def make_expressions(ns, expressions)
  return expressions if ns.empty?
  n = ns.shift
  new_expressions = expressions.each.with_object([]) do |expr, o|
    [ '+', '-' ].each { |op| o << expr + op + n }
  end
  make_expressions(ns, new_expressions)
end

def solve(ns)
  init = ns.shift
  make_expressions(ns, [ init ]).find { |expr| eval(expr) == EXPECTD_RESULT } + '=%d' % EXPECTD_RESULT
end

a = gets.chomp.scan(/./)
puts solve(a)
