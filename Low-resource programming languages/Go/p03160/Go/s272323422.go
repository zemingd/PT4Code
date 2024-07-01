package main

import (
	"bufio"
	"os"
	"strconv"
	"strings"
)

func frog1(n int, heights []int) int {
	minInt := func(a, b int) int {
		if a < b {
			return a
		}
		return b
	}
	absInt := func(a int) int {
		if a < 0 {
			return -a
		}
		return a
	}
	costs := make([]int, n)
	costs[0] = 0
	costs[1] = absInt(heights[1] - heights[0])
	for i := 2; i < n; i++ {
		costs[i] = minInt(
			absInt(heights[i]-heights[i-1])+costs[i-1],
			absInt(heights[i]-heights[i-2])+costs[i-2])
	}
	return costs[n-1]
}

func main() {
	inp := bufio.NewScanner(os.Stdin)
	inp.Scan()
	stones, _ := strconv.Atoi(inp.Text())
	inp.Scan()
	heightsS := strings.Split(inp.Text(), " ")
	heights := make([]int, len(heightsS))
	for i, c := range heightsS {
		heights[i], _ = strconv.Atoi(c)
	}

	f := bufio.NewWriter(os.Stdout)
	defer f.Flush()
	f.WriteString(strconv.Itoa(frog1(stones, heights)))
	//fmt.Println(frog1(4, []int{10, 30, 40, 20}))
	//fmt.Println(frog1(6, []int{30, 10, 60, 10, 60, 50}))
}
