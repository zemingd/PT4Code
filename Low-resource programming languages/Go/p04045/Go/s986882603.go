package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	var d int
	ds := make(map[int]bool, k)
	for i := 0; i < k; i++ {
		fmt.Scan(&d)
		ds[d] = true
	}

	ns := []int{n / 1000, n % 1000 / 100, n % 1000 % 100 / 10, n % 1000 % 100 % 10}

	head := true
	for i := 0; i < len(ns); i++ {

		if head {
			if ns[i] == 0 {
				continue
			} else {
				head = false
			}
		}

		for j := 0; j < 10; j++ {
			if ds[j] {
				if ns[i] == j {
					if ns[i] < 9 {
						ns[i] += 1
					}
				}
			}
		}
	}

	var str string
	for _, v := range ns {
		str += strconv.Itoa(v)
	}

	ans, _ := strconv.Atoi(str)
	fmt.Println(ans)
}
