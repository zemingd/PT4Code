package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	ss := make([]int, m)
	cs := make([]int, m)
	for i := 0; i < m; i++ {
		fmt.Scan(&ss[i], &cs[i])
	}

	max := int(math.Pow(10.0, float64(n)))
	for i := 0; i < max; i++ {
		str := strconv.Itoa(i)
		if len(str) != n {
			continue
		}
		ok := true
		for j := 0; j < m; j++ {
			if str[ss[j]-1]-'0' != byte(cs[j]) {
				ok = false
			}
		}
		if ok {
			fmt.Println(i)
			return
		}
	}
	fmt.Println(-1)
}
