package main

import "fmt"

func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)

	prob := make([]float32, N)

	for i := 1; i <= N; i++ {
		s := i
		tc := 0
		for s <= K {
			s *= 2
			tc += 1
		}
		if tc > 0 {
			prob[i-1] = float32(1) / float32(N) / float32(2*tc)
		}
	}

	var res float32
	for _, p := range prob {
		res += p
	}
	fmt.Println(res)
}