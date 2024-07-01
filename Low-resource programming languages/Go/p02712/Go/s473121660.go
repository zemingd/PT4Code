package main

import "fmt"

func main() {
	var res int
	var n int
	fmt.Scan(&n)
	for i := 1; i <= n; i++ {
		if (i%3 == 0) && (i%5 == 0) {
			continue
		} else if i%3 == 0 {
			continue
		} else if i%5 == 0 {
			continue
		} else {
			res += i
		}
	}
	fmt.Println(res)
}