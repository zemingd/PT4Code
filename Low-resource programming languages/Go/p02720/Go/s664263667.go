package main

import "fmt"

func main() {
	var K int
	fmt.Scan(&K)
	qs := make([]int, 0)
	for i := 1; i <= 9; i++ {
		qs = append(qs, i)
	}
	count := 0
	for len(qs) > 0 {
		count++
		q := qs[0]
		qs = qs[1:]
		if count == K {
			fmt.Println(q)
			return
		}
		if q%10 != 0 {
			qs = append(qs, 10*q+(q%10)-1)
		}
		qs = append(qs, 10*q+(q%10))
		if q%10 != 9 {
			qs = append(qs, 10*q+(q%10)+1)
		}
	}
}
