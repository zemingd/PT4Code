package main

import (
	"fmt"
	"math"
)

var nums [][][]int // nums[n][d] = n 桁、最初の数字 d の lunlun index 列
var lun []int      // lun[i] = lunlun index i の実際の数字

func main() {
	var K int
	fmt.Scanf("%d", &K)
	nums = make([][][]int, 11)
	lun = make([]int, 100001)
	fmt.Println(solve(K))
}

func solve(K int) int {
	nums[1] = make([][]int, 10)
	for i := 0; i <= 9; i++ {
		lun[i] = i
		nums[1][i] = []int{i}
	}

	if K <= 9 {
		return lun[K]
	}

	i := 10
	for n := 2; ; n++ {
		nums[n] = make([][]int, 10)

		for d := 1; d <= 9; d++ {
			nums[n][d] = []int{}

			for n2 := 1; d == 1 && n2 <= n-2; n2++ {
				if n2 == 1 {
					nums[n][d] = append(nums[n][d], i)
					lun[i] = d*int(math.Pow(10, float64(n-1))) + lun[0]

					if i == K {
						return lun[i]
					}

					i++
				}

				for _, i2 := range nums[n2][1] {
					nums[n][d] = append(nums[n][d], i)
					lun[i] = d*int(math.Pow(10, float64(n-1))) + lun[i2]

					if i == K {
						return lun[i]
					}

					i++
				}
			}

			for d2 := d - 1; d2 <= d+1; d2++ {
				if d2 < 0 || d2 > 9 {
					continue
				}

				for _, i2 := range nums[n-1][d2] {
					nums[n][d] = append(nums[n][d], i)
					lun[i] = d*int(math.Pow(10, float64(n-1))) + lun[i2]

					if i == K {
						return lun[i]
					}

					i++
				}
			}
		}
	}
}
