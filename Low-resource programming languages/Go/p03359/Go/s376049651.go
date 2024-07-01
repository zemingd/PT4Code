package main

import "fmt"

func main() {
	var a, b, cnt int
	fmt.Scan(&a, &b)
	for i := 1; i <= a; i++ {
		for j := 1; j <= b; j++ {
			if i == j {
				cnt++
			}
		}
	}
	fmt.Println(cnt)
}
