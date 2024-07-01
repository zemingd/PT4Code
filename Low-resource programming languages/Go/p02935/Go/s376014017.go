package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	N := getStdinInt()
	v := getStdinIntArr()
	vf := make([]float64, N)
	for i := 0; i < N; i++ {
		vf[i] = (float64)(v[i])
	}

	sort.Slice(vf, func(i, j int) bool { return vf[i] < vf[j] })

	for {
		vftmp := make([]float64, 0)

		for i := 0; i+1 < len(vf); i += 2 {
			vftmp = append(vftmp,
				(float64)(vf[i]+vf[i+1])/2.0)
		}
		if len(vf)%2 == 1 {
			vftmp = append(vftmp, vf[len(vf)-1])
		}

		vf = vftmp
		if len(vftmp) <= 1 {
			break
		}
	}

	fmt.Printf("%f\n", vf[0])
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
