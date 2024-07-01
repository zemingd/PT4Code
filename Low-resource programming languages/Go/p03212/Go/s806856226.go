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

	nums := f(0, digit(n))
	result := 0
	for i := 0; i < len(nums); i++ {
		if nums[i] < 300 || nums[i] > n {
			continue
		}
		ok3, ok5, ok7 := false, false, false
		for nums[i] > 0 {
			switch nums[i] % 10 {
			case 3:
				ok3 = true
			case 5:
				ok5 = true
			case 7:
				ok7 = true
			}
			nums[i] /= 10
		}
		if ok3 && ok5 && ok7 {
			result++
		}
	}

	fmt.Fprintln(out, result)
}

func digit(n int) int {
	ret := 1
	for n > 0 {
		ret++
		n /= 10
	}
	return ret
}

func f(n, d int) []int {
	nn := make([]int, 3)
	for i, b := range []int{3, 5, 7} {
		nn[i] = n*10 + b
	}
	if digit(nn[0]) == d {
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
