n, m = gets.chop.split.map(&:to_i)

# 本番の回答
# return puts 0 if n == 1 && m == 1

# if n == 0 || n == 1
#   child = factorial(m)
#   mother = 2 * factorial(m - 2)
#   return puts child / mother
# else
#   n_child = factorial(n)
#   n_mother = 2 * factorial(n - 2)
#   n_count = child / mother

#   m_child = factorial(m)
#   m_mother = 2 * factorial(m - 2)
#   m_count = child / mother

#   return puts n_count + m_count
# end

# def factorial(number)
#   number = 0 if number.nil?
#   (1..number).inject(1,:*)
# end

n_count = (n * (n -1)) / 2
m_count = (m * (m -1)) / 2

puts n_count + m_count
