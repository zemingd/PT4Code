package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	var cnt int
	for i := 1; i <= n; i += 2 {
		d := 0
		for j := 1; j <= i; j += 2 {
			if i%j == 0 {
				d++
			}
		}
		if d == 8 {
			cnt++
		}
	}
	fmt.Println(cnt)
}
