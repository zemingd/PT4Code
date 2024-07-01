package main

import (
	"bufio"
	"fmt"
	"os"
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

	nums := make(map[int]uint64, n)
	for i := 0; i < n; i++ {
		str := getString()
		for j := 0; j < 10; j++ {
			n += int(str[j])
		}
		nums[n]++
	}
	fmt.Println(nums)
	var ans uint64
	ans = 0
	for _, v := range nums {
		ans += (v * (v - 1)) / 2
	}
	fmt.Println(ans)
}
