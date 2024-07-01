package main

import "fmt"

var N, K int
var d, a int

func main() {
	fmt.Scan(&N, &K)
	as := make(map[int]int)
	for i:=1; i<=N; i++ {
		as[i] = 0
	}
	for i := 0; i < K; i++ {
		fmt.Scan(&d)
		for j := 0; j < d; j++ {
			fmt.Scan(&a)
			as[a]++
		}
	}
	ans := 0
	for _, v := range as {
		if v == 0 {
			ans++}
		}
		fmt.Println(ans)
}
