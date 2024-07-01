package main

import "fmt"

func main() {
	var s, num int
	fmt.Scan(&s)

	a := make([]int, 1000000)
	a[0] = s

	for i := 1; i < 1000000; i++ {
		if a[i-1]%2 == 0 {
			num = a[i-1] / 2
		} else {
			num = a[i-1]*3 + 1
		}

		if contains(num, a, i) {
			fmt.Println(i+1)
			break
		} else {
			a[i] = num
		}
	}
}

func contains(n int, a []int, index int) bool {
	for i, v := range a {
		if v == n {
			return true
		}

		if i == index {
			return false
		}
	}
	return false
}
