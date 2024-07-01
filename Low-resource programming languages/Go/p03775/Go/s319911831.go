package main

import (
	"bufio"
	"fmt"
	"strconv"
	"strings"
	"os"
	"math"
)

func readLine(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func readInt(sc *bufio.Scanner) (res int) {
	res, _ =strconv.Atoi(readLine(sc))
	return
}

func readInts(sc *bufio.Scanner, n int) []int {
	ns := strings.Split(readLine(sc), " ")
	res := make([]int, n)

	for i, n := range ns {
		res[i], _ = strconv.Atoi(n)
	}
	return res
}

func readInt64s(sc *bufio.Scanner, n int) []int64 {
	ns := strings.Split(readLine(sc), " ")
	res := make([]int64, n)

	for i, n := range ns {
		res[i], _ = strconv.ParseInt(n, 10, 64)
	}
	return res
}

func readMatrix(sc *bufio.Scanner, rows, cols int) [][]int {
	res := make([][]int, rows)
	for i := 0; i < rows; i ++ {
		res[i] = readInts(sc, cols)
	}
	return res
}

func abs(i int) int {
	if i < 0 {
		return -i
	} else {
		return i
	}
}

func max(a ,b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func main() {
	sc := bufio.NewScanner(os.Stdin)

	n := readInt(sc)

	var m int = int(math.Sqrt(float64(n))) + 1

	min := 11
	for i := 1; i <= m; i ++ {
		d := n / i
		r := n % i

		if r != 0 {
			continue
		}

		x := max(len(fmt.Sprint(d)), len(fmt.Sprint(i)))
		if x <= min {
			min = x
		}
	}

	fmt.Println(min)
}