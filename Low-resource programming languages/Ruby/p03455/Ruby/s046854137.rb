# frozen_string_literal: true

a, b = gets.chomp.strip(' ').map(&:to_i)

(a * b).even? ? puts('even') : puts('odd')
