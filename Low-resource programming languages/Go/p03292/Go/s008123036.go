package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	return n
}

func sum(n []int) int {
	a := 0
	for _, v := range n {
		a += v
	}
	return a
}

func main() {
	sc.Split(bufio.ScanWords)
	a := make([]int, 3)
	a[0], a[1], a[2] = getInt(), getInt(), getInt()
	sort.Ints(a)

	ans := int(math.Abs(float64(a[0]-a[1]))) + int(math.Abs(float64(a[1]-a[2])))
	fmt.Println(ans)
}
