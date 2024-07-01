package main

import "fmt"

func main() {
	var k int
	var x int
	fmt.Scan(&k)
	fmt.Scan(&x)
	flag := true

	for i := -(k - 1); i <= (k - 1); i++ {
		ans := x + i
		if ans >= -1000000 && ans <= 1000000 {
			if flag {
				flag = false
			} else {
				fmt.Printf(" ")
			}
			fmt.Printf("%d", ans)
		}
	}
	fmt.Printf("\n")
}
