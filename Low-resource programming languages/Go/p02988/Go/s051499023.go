package main

import "fmt"

func main() {
	var n int
	fmt.Scanf("%d", &n)
	P := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &P[i])
	}

	ans := 0
	for i := 1; i < n-1; i++ {
		if P[i] > P[i-1] && P[i] < P[i+1] {
			ans++
		} else if P[i] < P[i-1] && P[i] > P[i+1] {
			ans++
		}
	}
	fmt.Println(ans)
}
