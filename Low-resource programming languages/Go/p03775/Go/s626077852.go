package main

import (
	"fmt"
)

func max(x, y int64) int64 {
	if x < y {
		return y
	}

	return x
}

func min(x, y int64) int64 {
	if x < y {
		return x
	}

	return y
}

func count(N int64) int64 {
	var copy int64 = N
	count := int64(0)
	for copy != 0 {
		count++
		copy /= 10
	}

	return count
}

func main() {
	var N int64
	fmt.Scan(&N)
	half := N / 3
    half2 := N / 3 * 2

	ch := make(chan int64)
	ch2 := make(chan int64)
    ch3 := make(chan int64)

	go task(N, half2, half, ch)
	go task(N, half, 0, ch2)
    go task(N, half2, N, ch3)

	ans := int64(12)
	for v := range ch {
		ans = min(ans, v)
	}
	for v := range ch2 {
		ans = min(ans, v)
	}
    for v := range ch3 {
		ans = min(ans, v)
	}

	fmt.Println(ans)
}

func task(N int64, end int64, start int64, ch chan int64) {
	defer close(ch)
	for i := int64(start) + 1; i <= end; i++ {
		if N%i == 0 {
			another := N / i

			ch <- max(count(i), count(another))
		}
	}
}
