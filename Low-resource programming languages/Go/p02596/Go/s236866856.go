package main

import "fmt"

func main() {
	var k int
	fmt.Scan(&k)

	if k%2 == 0 || k%5 == 0 {
		fmt.Println("-1")
	} else {
		n := 0
		a := 1
		for i := 1; i <= k; i++ {
			n += 7 * a
			a *= 10
			if n%k == 0 {
				fmt.Println(i)
				return
			}
		}
		fmt.Println(k - 1)
	}
}
