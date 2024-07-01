package main

import "fmt"

func main() {
	var n, y int
	fmt.Scan(&n, &y)


	for a := 0 ; a <= n ; a++ {
		for b := 0 ; b <= n ; b++ {
			for c := 0 ; c <= n ; c++ {
				if a + b + c  > n {
					break
				}
				if y == 10000 * a + 5000* b + 1000*c {
					fmt.Println(a, b, c)
					return
				}
			}
		}
	}

	fmt.Println("-1 -1 -1")
}

