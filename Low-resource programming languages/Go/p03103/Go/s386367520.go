package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, M int
	fmt.Scan(&N, &M)
	drinks := make(map[int]int)
	var A, B int
	for i := 0; i < N; i++ {
		fmt.Scan(&A, &B)
		drinks[A] += B
	}

	k := make([]int, 0, len(drinks))
	for p := range drinks {
		k = append(k, p)
	}
	sort.Ints(k)

	ans := 0
	for i := 0; i < len(k); i++ {
		c := drinks[k[i]]
		if M < c {
			c = M
		}
		ans += k[i] * c
		M -= c
		if M <= 0 {
			break
		}
	}

	fmt.Println(ans)
}
