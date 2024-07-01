package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solution(n int, nums []int) string {
	var ans string = "APPROVED"

	for i := range nums {
		if nums[i]&1 == 0 {
			if nums[i]%3 == 0 || nums[i]%5 == 0 {
				continue
			} else {
				ans = "DENIED"
				break
			}
		}
	}

	return ans
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	nums := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		nums[i], _ = strconv.Atoi(sc.Text())
	}

	fmt.Printf(solution(n, nums))
}
