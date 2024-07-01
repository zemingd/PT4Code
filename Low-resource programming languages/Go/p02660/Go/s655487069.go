package main

import "fmt"

func main() {
	var N int
	fmt.Scanf("%d", &N)

	prime := make(map[int]int)
	if N == 1 {
		fmt.Println(0)
		return
	}
	for i := 2; i*i <= N; i++ {
		for N%i == 0 {
			N /= i
			prime[i]++
		}
	}
	if len(prime) == 0 {
		// is prime
		fmt.Println(1)
		return
	}
	count := 0
	for _, vv := range prime {
		if vv == 1 {
			count++
			continue
		}
		v := vv
		for i := 1; i < vv; i++ {
			v -= i
			if v >= 0 {
				count++
			} else {
				break
			}
		}
	}
	fmt.Println(count)
}
