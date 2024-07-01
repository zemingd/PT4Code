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
	for j := 0; j < n-k+1; j++ {
		diff := i[j+k-1] - i[j]
		if diff < mn {
			mn = diff
		}
		fmt.Println(j+k-1, j)
	}
	return mn
}
func HeightInput(num int) []int {
	var mat = make([]int, num)
	for i := 0; i < num; i++ {
		mat[i] = nextInt()
	}
	// sort.Sort(sort.IntSlice(mat))
	sort.Ints(mat)
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
	n := nextInt()
	k := nextInt()

	hei := HeightInput(n)
	ans := Calc(hei, n, k)
	fmt.Println(hei)
	fmt.Println(ans)
}
