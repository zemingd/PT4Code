package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	i := 1
	for i <= N {
		i *= 2
	}
	fmt.Println(i / 2)
}
