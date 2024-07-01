package main

import "fmt"

func main() {
	var K int
	fmt.Scan(&K)

	qs := make([]int, 0)
	qs = append(qs, []int{1, 2, 3, 4, 5, 6, 7, 8, 9}...)
	count := 0
	for len(qs) > 0 {
		q := qs[0]
		qs = qs[1:]
		count++
		if count == K {
			fmt.Println(q)
			return
		}
		last := q % 10
		if last != 0 {
			qs = append(qs, 10*q+last-1)
		}
		qs = append(qs, 10*q+last)
		if last != 9 {
			qs = append(qs, 10*q+last+1)
		}
	}
}
