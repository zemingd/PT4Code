package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func main() {
	/*/TODO:!!!!!!!テスト用!!!!!!!!!
	sc = bufio.NewScanner(strings.NewReader(`

	60 88 34
	92 41 43
	65 73 48
	10
	60
	43
	88
	11
	48
	73
	65
	41
	92
	34

	`))
	//TODO:!!!!!!!テスト用!!!!!!!!!*/

	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush() // !!!!caution!!!! you must use Fprint(out, ) not Print()
	/* --- code --- */
	a := [][]int{
		{nextInt(), nextInt(), nextInt()},
		{nextInt(), nextInt(), nextInt()},
		{nextInt(), nextInt(), nextInt()},
	}
	n := nextInt()
	for j := 0; j < n; j++ {
		b := nextInt()
		for x := 0; x < 3; x++ {
			for y := 0; y < 3; y++ {
				if a[y][x] == b {
					a[y][x] = 0
				}
			}
		}
	}

	ans := "No"
	for i := 0; i < 3; i++ {
		if (a[i][0] == 0 && a[i][1] == 0 && a[i][2] == 0) || (a[0][i] == 0 && a[1][i] == 0 && a[2][i] == 0) {
			ans = "Yes"
			break
		}
	}
	if (a[0][0] == 0 && a[1][1] == 0 && a[2][2] == 0) || (a[2][0] == 0 && a[1][1] == 0 && a[0][2] == 0) {
		ans = "Yes"
	}

	fmt.Fprintln(out, ans)
}

// -*-*-*-*-*-*-*-*-
// * I/O utilities *
// -*-*-*-*-*-*-*-*-

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func nextFloat64() float64 {
	a, _ := strconv.ParseFloat(next(), 64)
	return a
}

func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}
func nextFloats(n int) []float64 {
	ret := make([]float64, n)
	for i := 0; i < n; i++ {
		ret[i] = nextFloat64()
	}
	return ret
}
func nextStrings(n int) []string {
	ret := make([]string, n)
	for i := 0; i < n; i++ {
		ret[i] = next()
	}
	return ret
}

func chars(s string) []string {
	ret := make([]string, len([]rune(s)))
	for i, v := range []rune(s) {
		ret[i] = string(v)
	}
	return ret
}
