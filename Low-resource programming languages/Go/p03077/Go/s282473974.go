package main

import "fmt"

func main() {
	var n, a, b, c, d, e int64
	fmt.Scan(&n, &a, &b, &c, &d, &e)
	arr := []int64{a, b, c, d, e}
	times := make([]int64, 5)
	for i := 0; i < 5; i++ {
		if n % arr[i] == 0 {
			times[i] = n / arr[i]
		} else {
			times[i] = (n / arr[i]) + 1
		}
	}

	for i := 0; i < 4; i++ {
		if times[i] > times[i + 1] {
			times[i + 1] = times[i]
		}
	}

	for i := 0; i < 5; i++ {
		times[i] += int64(i)
	}
	fmt.Println(times[4])
}