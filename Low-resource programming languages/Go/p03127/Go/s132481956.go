package main

import "fmt"

func getGcd(a, b int) (g int) {
	if a < b {
		g = getGcd(b, a)
	} else {
		if a%b == 0 {
			g = b
		} else {
			g = getGcd(b, a%b)
		}
	}
	return
}

func main() {
	var N int
	fmt.Scan(&N)
	a := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
	}
	hp := a[0]
	for i := 1; i < N; i++ {
		hp = getGcd(hp, a[i])
		if hp == 1 {
			break
		}
	}
	fmt.Println(hp)
}
