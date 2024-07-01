package main

import "fmt"

func numDigits(i int64) int64 {
	if i < 10 {
		return 1
	}
	return numDigits(i/10) + 1
}

func main() {
	var n int64
	fmt.Scan(&n)

	min := int64(20)
	for i := int64(1); i*i < n; i++ {
		if n%i == 0 {
			if v := numDigits(n / i); min > v {
				min = v
			}
		}
	}
	fmt.Println(min)
}
