package main

import (
  "fmt"
)

func main() {

 	var N int

 	fmt.Scan(&N)

	var answer int

  for C:= 1; C <= N; C += 2 {
		var num_of_divisors int
    for X := 1; X <= C; X++ {
			if C % X == 0 {
				num_of_divisors++
			}
		}
		if num_of_divisors == 8 {
			answer++
		}
	}
  fmt.Print(answer)
}