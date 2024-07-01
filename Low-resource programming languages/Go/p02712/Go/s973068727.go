package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	ret := int64(0)
	for i := 1; i <= N; i++ {
		if i%3 != 0 && i%5 != 0 {
			ret += int64(i)
		}
	}

	fmt.Println(ret)
}
