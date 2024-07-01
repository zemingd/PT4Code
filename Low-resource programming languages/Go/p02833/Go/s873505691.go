package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	if N%2 == 1 {
		fmt.Println(0)
		return
	}
	N /= 2
	// N!の中に5が何個あるか数える
	p := 5
	ans := 0
	for N >= p {
		ans += N / p
		p *= 5
	}
	fmt.Println(ans)
}
