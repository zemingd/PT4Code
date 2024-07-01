package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var s = bufio.NewScanner(os.Stdin)

func getString() string {
	s.Scan()
	return s.Text()
}

func getInt() int {
	s.Scan()
	a, _ := strconv.Atoi(s.Text())
	return int(a)
}

func main() {
	s.Split(bufio.ScanWords)
	n := getInt()

	strs := make([]string, n)
	nums := make([]int, n)
	for i := range strs {
		strs[i] = getString()
		for j := 0; j < 10; j++ {
			nums[i] += int(strs[i][j])
		}
	}
	sort.Ints(nums)
	var ans uint64
	ans = 0
	var count uint64
	count = 0
	for i := 0; i < n-1; i++ {
		if nums[i] == nums[i+1] {
			count++
			if i == n-2 {
				ans += (count * (count + 1) / 2)
			}
		} else {
			if count > 0 {
				ans += (count * (count + 1) / 2)
			}
			count = 0
		}
	}
	fmt.Println(ans)
}
