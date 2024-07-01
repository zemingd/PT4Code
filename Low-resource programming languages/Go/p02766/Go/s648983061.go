package main

import "fmt"

func main() {
	var N, K int
	fmt.Scan(&N)
	fmt.Scan(&K)
	cnt := 1
	for N/K >= 1 {
		cnt++
		N /= K
	}
	fmt.Println(cnt)
}
