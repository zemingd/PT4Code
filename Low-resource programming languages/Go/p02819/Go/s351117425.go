package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	for i := n; i <= 100003; i++ {
		p := true
		for j := 2; j*j <= i; j++ {
			if i%j == 0 {
				p = false
				break
			}
		}
		if p {
			fmt.Println(i)
			break
		}
	}
}
