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

func main() {
	defer out.Flush()
	sc.Split(bufio.ScanWords)
	x := nextInt()
	var res float64 = 100
	for i := 1; ; i++ {
		res = math.Floor(float64(res * 1.01))
		if int(res) >= x {
			fmt.Fprintln(out, fmt.Sprint(i))
			return
		}
	}
}
