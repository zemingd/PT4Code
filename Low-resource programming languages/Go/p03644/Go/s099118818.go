package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	res := 2
	for res<=n {
		res*=2
	}
	fmt.Println(res/2)
}