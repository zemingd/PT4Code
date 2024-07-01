package main

import (
	"fmt"
)

func main(){
	var n int
	fmt.Scan(&n)
	var s string
	fmt.Scan(&s)
	var answer int

	for r := 0; r < n; r++ {
		sum := 0
		for c, v := range s {
			m := string(v)
			if c < r {
				if m == `W` {
					sum++
				}
			}else if c > r {
				if m == `E` {
					sum++
				}
			}
		}

		if sum < answer || answer == 0 {
			if sum != 0 {
				answer = sum
			}
		}
	}
	fmt.Print(answer)
}