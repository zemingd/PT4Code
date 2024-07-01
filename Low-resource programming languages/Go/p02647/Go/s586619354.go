package main

import "fmt"

func main() {
	var n, k int
	fmt.Scanf("%d", &n)
	fmt.Scanf("%d", &k)

	pows := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &pows[i])
	}

	for l := 0; l < k; l++ {
		covered := make([]int, n)
		for i := 0; i < n; i++ {
			for j := -pows[i]; j <= pows[i]; j++ {
				if i+j < 0 || i+j > n-1 {
					continue
				} else {
					covered[i+j]++
				}
			}
		}

		for i := 0; i < n; i++ {
			pows[i] = covered[i]
		}
	}

	for i := 0; i < n; i++ {
		fmt.Printf("%d ", pows[i])
	}
}
