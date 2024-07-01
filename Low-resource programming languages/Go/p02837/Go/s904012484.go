package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner
var out *bufio.Writer

func main() {
	sc = bufio.NewScanner(os.Stdin)
	//bytes, _ := ioutil.ReadFile("./stdin.txt")
	//sc = bufio.NewScanner(strings.NewReader(string(bytes)))
	out = bufio.NewWriter(os.Stdout)
	buf := make([]byte, 1<<20)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush()

	n := nextInt()
	a := make([]map[int]int, n)
	for i := 0; i < n; i++ {
		m := nextInt()
		a[i] = make(map[int]int, m)
		for j := 0; j < m; j++ {
			x, y := nextInt(), nextInt()
			a[i][x-1] = y
		}
	}

	result := 0
	comment := make([]int, n)
	for i := 1; i < 1<<n; i++ {
		for j := 0; j < n; j++ {
			comment[j] = -1
		}
		ok := true
		num := 0
		for j := 0; j < n; j++ {
			if (1<<j)&i == 0 {
				continue
			}
			num++
			for x, y := range a[j] {
				if comment[x] != -1 && comment[x] != y {
					ok = false
					break
				}
				comment[x] = y
				if comment[x] == 1 {
					if y2, exist := a[x][j]; exist && y2 == 0 {
						ok = false
						break
					}
					if (1<<x)&i == 0 {
						ok = false
						break
					}
				}
				if comment[x] == 0 && (1<<x)&i > 0 {
					ok = false
					break
				}
			}
			if !ok {
				break
			}
		}
		if ok {
			result = intMax(result, num)
		}
	}

	fmt.Fprintln(out, result)

}

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
func intMin(a, b int) int {
	if a > b {
		return b
	}
	return a
}
func intMax(a, b int) int {
	if a > b {
		return a
	}
	return b
}
