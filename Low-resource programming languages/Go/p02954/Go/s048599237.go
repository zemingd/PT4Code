package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

var scan *bufio.Scanner
var writer io.Writer

func init() {
	scan = bufio.NewScanner(os.Stdin)
	writer = os.Stdout
	scan.Split(bufio.ScanWords)
}

func main() {
	solve()
}

func solve() {
	s := nextWord()
	ans := make([]int, len(s))
	cc := "R"[0]
	index := 0
	for i := 1; i < len(s); i++ {
		if cc == "R"[0] && s[i] != "R"[0] {
			ans[i-1] = i - index
			cc = "L"[0]
			index = i
		}
		if cc == "L"[0] && s[i] != "L"[0] {
			ans[index] = i - index
			cc = "R"[0]
			index = i
		}
	}
	ans[index] = len(s) - index

	for i := 0; i < len(s)-1; i++ {
		if ans[i] != 0 {
			tmp1 := ans[i]
			tmp2 := ans[i+1]
			ans[i] = int(math.Ceil(float64(tmp1)/2.0) + math.Trunc(float64(tmp2)/2.0))
			ans[i+1] = int(math.Ceil(float64(tmp2)/2.0) + math.Trunc(float64(tmp1)/2.0))
			i++
		}
	}
	for _, a := range ans {
		fmt.Fprint(writer, a, " ")
	}
}

func nextWord() string {
	scan.Scan()
	str := scan.Text()
	return str
}

func nextInt() int {
	i, e := strconv.Atoi(nextWord())
	if e != nil {
		panic(e)
	}
	return i
}
