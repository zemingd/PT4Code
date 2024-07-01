package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	N := getStdinInt()
	d := getStdinIntArr()

	ans := 0

	for x := 0; x < N; x++ {
		for y := 0; y < N; y++ {
			if x == y || y > x {
				continue
			}
			ans += d[x] * d[y]
		}
	}

	fmt.Printf("%d\n", ans)
}

var sc = bufio.NewReaderSize(os.Stdin, 1024*1024*10)

func getStdin() string {
	return readLine()
}
func getStdinInt() int {
	str := getStdin()
	rtn, _ := strconv.Atoi(str)
	return rtn
}
func getStdinInt2() (int, int) {
	list := getStdinIntArr()
	return list[0], list[1]
}
func getStdinInt3() (int, int, int) {
	list := getStdinIntArr()
	return list[0], list[1], list[2]
}
func getStdinInt64() int64 {
	str := getStdin()
	rtn, _ := strconv.ParseInt(str, 10, 64)
	return rtn
}
func getStdinIntU64() uint64 {
	str := getStdin()
	rtn, _ := strconv.ParseInt(str, 10, 64)
	return uint64(rtn)
}
func getStdinInt64_2() (int64, int64) {
	list := getStdinIntArr64()
	return list[0], list[1]
}
func getStdinInt64_3() (int64, int64, int64) {
	list := getStdinIntArr64()
	return list[0], list[1], list[2]
}
func getStdinIntArr() []int {
	str := getStdin()
	list := strings.Split(str, " ")
	rtn := make([]int, len(list))
	for idx, val := range list {
		rtn[idx], _ = strconv.Atoi(val)
	}
	return rtn
}
func getStdinIntArr64() []int64 {
	str := getStdin()
	list := strings.Split(str, " ")
	rtn := make([]int64, len(list))
	for idx, val := range list {
		rtn[idx], _ = strconv.ParseInt(val, 10, 64)
	}
	return rtn
}
func getStdinIntArrU64() []uint64 {
	str := getStdin()
	list := strings.Split(str, " ")
	rtn := make([]uint64, len(list))
	for idx, val := range list {
		r, _ := strconv.ParseInt(val, 10, 64)
		rtn[idx] = uint64(r)
	}
	return rtn
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func min64(a, b int64) int64 {
	if a < b {
		return a
	}
	return b
}
func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}
func max64(a, b int64) int64 {
	if a < b {
		return b
	}
	return a
}
func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}
func abs64(n int64) int64 {
	if n < 0 {
		return -n
	}
	return n
}
func readLine() string {
	buf := make([]byte, 0, 0)
	for {
		l, p, _ := sc.ReadLine()
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}
