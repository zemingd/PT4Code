package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func next() string {
	sc.Scan()
	return sc.Text()
}
func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}
func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}
func nextInt64() int64 {
	a, _ := strconv.ParseInt(next(), 10, 64)
	return a
}
func readLine(reader *bufio.Reader) string {
	str, _, err := reader.ReadLine()
	if err == io.EOF {
		return ""
	}
	return string(str)
}

func round(f float64) float64 {
	return math.Floor(f + .5)
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	defer out.Flush()
	sc.Split(bufio.ScanWords)
	n := nextInt()
	k := nextInt()
	sunuke := make(map[int]bool, n)
	for i := 1; i <= n; i++ {
		sunuke[i] = false
	}
	for i := 0; i < k; i++ {
		d := nextInt()
		for j := 0; j < d; j++ {
			a := nextInt()
			sunuke[a] = true
		}
	}
	count := 0
	for _, v := range sunuke {
		if !v {
			count++
		}
	}
	fmt.Fprintln(out, count)

}
