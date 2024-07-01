package main

import "fmt"

func main() {
	var N int
	fmt.Scanf("%d", &N)
	var out int
	out = 0
	var tmpi []int
	var tmpii int
	tmpii = 0
	for i := 2; N != 1; i++ {
		for ii := 0; N%ii == 0; ii++ {
			N = N / ii
			tmpii++
		}
		if tmpii > 0 {
			tmpi = append(tmpi, tmpii)
		}
	}

	var count int
	for i := 0; i < len(tmpi); i++ {
		count = tmpi[i]
		for ii := 0; count > ii; ii++ {
			count -= ii
			out++
		}
	}

	fmt.Println(out)
}
