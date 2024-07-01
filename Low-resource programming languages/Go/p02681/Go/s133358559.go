package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
	"strings"
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

//func readLine(reader *bufio.Reader) string {
//	str, _, err := reader.ReadLine()
//	if err == io.EOF {
//		return ""
//	}
//	return string(str)
//}
func readLine() []string {
	reader := bufio.NewReaderSize(os.Stdin, 1)
	str, _, err := reader.ReadLine()
	if err == io.EOF {
		return []string{}
	}
	return strings.Split(string(str), " ")
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
	s := strings.Split(next(), "")
	t := strings.Split(next(), "")
	res := "No"
	if len(s)+1 != len(t) {
		fmt.Fprintln(out, res)
		return
	}
	for i := 0; i < len(s); i++ {
		if s[i] != t[i] {
			fmt.Fprintln(out, res)
			return
		}
	}
	res = "Yes"
	fmt.Fprintln(out, res)
}
