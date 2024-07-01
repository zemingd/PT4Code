package main

import "fmt"

func main() {
	var start float64
	start = 100
	var n int
	fmt.Scan(&n)
	for i := 1; i > 0; i++ {
		start *= 1.01
		tmp := int(start)
		if tmp >= n {
			fmt.Println(i)
			break
		}
		start = float64(tmp)
	}
}
