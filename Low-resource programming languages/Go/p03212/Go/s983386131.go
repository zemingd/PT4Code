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

	n := []byte(next())
	nInt, _ := strconv.Atoi(string(n))

	nums := f([]byte{}, len(n))
	result := 0
	for i := 0; i < len(nums); i++ {
		if len(nums[i]) < 3 {
			continue
		}
		if si, _ := strconv.Atoi(string(nums[i])); si > nInt {
			continue
		}

		digit := make(map[byte]bool, 10)
		for j := 0; j < len(nums[i]); j++ {
			digit[nums[i][j]] = true
		}
		if len(digit) == 3 {
			_, ok3 := digit['3']
			_, ok5 := digit['5']
			_, ok7 := digit['7']
			if ok3 && ok5 && ok7 {
				result++
			}
		}
	}

	fmt.Fprintln(out, result)
}

func f(n []byte, d int) [][]byte {
	nn := make([][]byte, 3)
	for i, b := range []byte{'3', '5', '7'} {
		nn[i] = append([]byte{b}, n...)
	}
	if len(nn[0]) == d {
		return nn
	}
	return append(nn, append(f(nn[0], d), append(f(nn[1], d), f(nn[2], d)...)...)...)
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
