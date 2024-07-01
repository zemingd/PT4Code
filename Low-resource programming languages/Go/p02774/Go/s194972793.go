package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func solution(n, k int, nums []int) int {
	l := (n * (n - 1)) / 2

	ans := make([]int, 0, l)

	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			ans = append(ans, nums[i]*nums[j])
		}
	}
	sort.Ints(ans)
	return ans[k-1]
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	sc.Scan()
	k, _ := strconv.Atoi(sc.Text())

	nums := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		nums[i], _ = strconv.Atoi(sc.Text())
	}

	fmt.Println(solution(n, k, nums))
}
