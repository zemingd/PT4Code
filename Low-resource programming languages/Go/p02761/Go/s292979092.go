package main

import (
	"fmt"
	"math"
)

func main() {
	var n, m int
	fmt.Scanf("%d %d", &n, &m)
	s := make([]int, m)
	c := make([]int, m)
	check := true
	for i := 0; i < m; i++ {
		fmt.Scanf("%d %d", &s[i], &c[i])
		if i != 0 {
			for j := 0; j < i; j++ {
				if s[i] == s[j] {
					if c[i] != c[j] {
						check = false
					} else {
						s[i] = 0
						c[i] = 0
					}
				}
			}
		}
		if s[i] > 0 && c[i] == 0 {
			check = false
		}
	}
	if check == false {
		fmt.Println("-1")
		return
	}

	ans := 0
	for i := 0; i < m; i++ {
		ans += int(math.Pow(10, float64(3-s[i]))) * c[i]
	}
	fmt.Println(ans)
}
