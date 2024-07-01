package main

import "fmt"

func main() {
	var x int
	fmt.Scan(&x)
	if x < 3 {
		fmt.Println("1")
		return
	}
	for i := x; i > 0; i-- {
		for j := 2; j <= x/2; j++ {
			t := i
			for {
				if t == 1 {
					fmt.Println(i)
					return
				}
				if t%j == 0 {
					t /= j
					continue
				}
				break
			}
		}
	}
}
