package main

import "fmt"

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)
	var aInsuu []int
	var bInsuu []int

	aInsuu = append(aInsuu, 1)
	bInsuu = append(bInsuu, 1)
	i := 2
	// aを素因数分解
	isFirst := true
	for a != 1 {
		if a%i == 0 {
			a /= i
			if isFirst {
				aInsuu = append(aInsuu, i)
				isFirst = false
			}
		} else {
			i++
			isFirst = true
		}
	}
	isFirst = true

	i = 2
	// bを素因数分解
	for b != 1 {
		if b%i == 0 {
			b /= i
			if isFirst {
				bInsuu = append(bInsuu, i)
				isFirst = false
			}
		} else {
			i++
			isFirst = true
		}
	}

	// 共通素因数の数を数える
	out := 0
	for _, val := range aInsuu {
		for ii := 0; ii < len(bInsuu); ii++ {
			if val == bInsuu[ii] {
				out++
			}
		}
	}
	fmt.Println(out)
}