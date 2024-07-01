package main

import "fmt"

func main() {
	var a, b, t int
	fmt.Scan(&a, &b, &t)
	ans := 0
	i := 0
	for {
		i++
		if t < a*i {
			break
		}
		ans += b
	}
	fmt.Println(ans)
}