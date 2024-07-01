package main

import "fmt"

func main() {
	var N, Result int
	fmt.Scan(&N)

	Result = N / 2
	if N % 2 != 0 {
		Result++
	}

	fmt.Println(Result)
}
