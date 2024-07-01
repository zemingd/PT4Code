package main

import "fmt"

var (
	H, N, sum int
	a         []int
)

func main() {
	fmt.Scan(&H)
	fmt.Scan(&N)
	a = make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&(a[i]))
	}
	for _, v := range a {
		sum += v
	}
	if H > sum {
		fmt.Println("No")
	} else {
		fmt.Println("Yes")
	}
}