A = gets.to_i
B = gets.to_i
FIVE_MILLION = 500


puts (A % FIVE_MILLION <= B)? "Yes" : "No"
