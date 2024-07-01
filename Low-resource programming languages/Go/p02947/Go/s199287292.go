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
	return a
}

func main() {
	s.Split(bufio.ScanWords)
	n := getInt()

	strs := make([]string, n)

	for i := range strs {
		strs[i] = getString()
	}

	nums := make([]int, n)
	for i := 0; i < n; i++ {
		for j := 0; j < 10; j++ {
			nums[i] += int(strs[i][j])
		}
	}

	ans := 0
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			if nums[i] == nums[j] {
				ans++
			}
		}
	}
	fmt.Println(ans)
}
