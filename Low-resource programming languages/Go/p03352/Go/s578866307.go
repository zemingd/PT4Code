package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	var nums []int

NEXTLOOP:
	for i := 1; i < 32; i++ {
		for ii := 2; ii < 10; ii++ {
			x := pow(i, ii)
			if x > 1000 {
				continue NEXTLOOP
			}
			nums = append(nums, x)
		}
	}
	max := 0
	for i := 0; i < len(nums); i++ {
		if nums[i] > N {
			continue
		}
		if max < nums[i] {
			max = nums[i]
		}
	}

	fmt.Println(max)

}

func pow(p, q int) int {
	var ans int
	ans = 1
	for i := 0; i < q; i++ {
		ans *= p
	}
	return ans
}
