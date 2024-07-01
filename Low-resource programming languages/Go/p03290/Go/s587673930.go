package main

import "fmt"

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var D, G int
	fmt.Scan(&D, &G)
	var p [10]int
	var c [10]int
	for i := 0; i < D; i++ {
		fmt.Scan(&p[i], &c[i])
	}
	ans := 1000
	for x := 0; x < (1 << uint(D)); x++ {
		sum := 0
		num := 0
		restMax := -1
		for i := 0; i < D; i++ {
			if (uint(x)>>uint(i))&uint(1) > 0 {
				sum += 100*(i+1)*p[i] + c[i]
				num += p[i]
			} else {
				restMax = i
			}
		}
		if sum < G {
			v := 100 * (restMax + 1)
			howmany := (G - sum + v - 1) / v
			if howmany >= p[restMax] {
				continue
			}
			num += howmany
		}
		ans = min(ans, num)
	}
	fmt.Println(ans)
}
