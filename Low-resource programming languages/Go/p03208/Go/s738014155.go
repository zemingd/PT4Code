package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

func Calc(i []int, n, k int) int {
	mn := math.MaxInt32
	for j := 0; j+k-1 < len(i); j++ {
		diff := i[j+k-1] - i[j]
		if diff < mn {
			mn = diff
		}
	}
	return mn
}
func HeightInput(num int) []int {
	var mat = make([]int, num)
	for i := 0; i < num; i++ {
		mat[i] = nextInt()
	}
	sort.Sort(sort.IntSlice(mat))
	return mat
}
func nextInt() int {
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Split(bufio.ScanWords)

	_ = stdin.Scan()
	line, _ := strconv.Atoi(stdin.Text())
	return line
}
func main() {
	var n, k int
	fmt.Scan(&n, &k)
	if n <= k {
		return
	}

	hei := HeightInput(n)
	ans := Calc(hei, n, k)
	fmt.Println(ans)
}
