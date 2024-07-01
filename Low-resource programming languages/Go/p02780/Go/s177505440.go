package main

import "fmt"

func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)
	arr := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &arr[i])
	}
	max := 0
	sum := 0
	for i := 0; i < N; i++ {
		if i < K {
			sum += convert(arr[i])
			continue
		}
		sum += convert(arr[i])
		sum -= convert(arr[i-K])
		if sum > max {
			max = sum
		}
	}
	if N == K {
		max = sum
	}
	var res float64
	res = float64(max) / 2
	fmt.Println(res)
}

func convert(val int) int {
	if val%2 == 0 {
		return val + 1
	}
	return val + 1
}
