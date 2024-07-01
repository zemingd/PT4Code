package main

import "fmt"

func main() {

	var H, N, p int

	fmt.Scanf("%d %d", &H, &N)

	a := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
	}

	for i := 0; i < N; i++ {
		p += a[i]
	}

	if p >= H {
		fmt.Printf("%s", "Yes")
	} else {
		fmt.Printf("%s", "No")
	}

}
