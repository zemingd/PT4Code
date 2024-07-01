# frozen_string_literal: true

a = gets.split.map(&:to_i)
int = 1
int += 1 while a.include? int
puts int
