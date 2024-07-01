package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}
func judgean(x []int, y []int, l int) bool {
	for i := 0; i < len(x); i++ {
		// fmt.Println(l, x[i], y[i], (l>>uint64(x[i]-1))&1)
		if !((l>>uint64(x[i]-1))&1 == y[i]) {
			return false
		}
	}
	return true
}
func judge(x [][]int, y [][]int, l int) int {
	count := 0
	for i := 0; i < len(x); i++ {
		if l>>uint64(i)&1 == 1 {
			count++
		}
		if (l>>uint64(i)&1 == 1) && !judgean(x[i], y[i], l) {
			return 0
		}
	}
	return count
}

func main() {
	sc.Split(bufio.ScanWords)
	x := [][]int{}
	y := [][]int{}
	n, _ := strconv.Atoi(read())
	ans := 0

	for i := 0; i < n; i++ {
		xtmp := []int{}
		ytmp := []int{}
		atmp, _ := strconv.Atoi(read())
		// fmt.Println(atmp)
		for j := 0; j < atmp; j++ {
			xitem, _ := strconv.Atoi(read())
			yitem, _ := strconv.Atoi(read())
			xtmp = append(xtmp, xitem)
			ytmp = append(ytmp, yitem)
		}
		x = append(x, xtmp)
		y = append(y, ytmp)
	}
	for i := 0; i < 2<<uint64(n-1); i++ {
		count := 0
		if count = judge(x, y, i); count == 0 {
			continue
		}

		if ans < count {
			ans = count
		}
	}
	fmt.Println(ans)
}
