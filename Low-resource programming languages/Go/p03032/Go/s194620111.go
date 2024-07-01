package main

import (
	"fmt"
	"math"
	"sort"
)

func main()  {
	var n, k int
	fmt.Scan(&n, &k)

	v := make([]int, n)
	for i:=0;i<n;i++ {
		fmt.Scan(&v[i])
	}

	min := int(math.Min(float64(n), float64(k)))

	result := 0
	for i:=0;i<min;i++ {
		for j:=0;j<min-i;j++ {
			sumArr := make([]int, 0, i+j)
			sumArr = append(sumArr, v[:i]...)
			sumArr = append(sumArr, v[len(v)-j:]...)

			var (
				sum int
				rem = k - i - j
			)

			sort.Ints(sumArr)
			for _, l := range sumArr {
				if l < 0 && rem > 0 {
					rem--
					continue
				}
				sum += l
			}
			//fmt.Println(i,j, k-i-j,sumArr, sum)
			if sum > result {
				result = sum
			}
		}
	}
	fmt.Println(result)
}