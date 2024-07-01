package main

import "fmt"

func main() {
	var K, x int
	fmt.Scan(&K)
	q := make([]int, 0)
	for i := 1; i < 10; i++ {
		q = append(q, i)
	}
	for i := 0; i < K-1; i++ {
		x = q[0]
		q = q[1:]
		for j := -1; j <= 1; j++ {
			a := (x % 10) + j
			if a >= 0 && a <= 9 {
				q = append(q, x*10+a)
			}
		}
	}
	fmt.Println(q[0])

}
