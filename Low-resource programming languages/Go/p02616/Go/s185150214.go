package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var mod int64 = 1000000007

func main() {
	_, K := getStdinInt64_2()
	A := getStdinIntArr64()

	sort.Slice(A, func(i, j int) bool {
		var tmp1 = A[i]
		var tmp2 = A[j]
		if tmp1 < 0 {
			tmp1 = -tmp1
		}
		if tmp2 < 0 {
			tmp2 = -tmp2
		}
		return tmp1 > tmp2
	})

	var i int64 = 0
	var ans int64 = 1
	for ; i < K; i++ {
		var tmp = A[i] * ans
		if tmp < 0 {
			tmp += mod
		}
		ans = tmp * ans % mod
	}

	sort.Slice(A, func(i, j int) bool {
		var tmp1 = A[i]
		var tmp2 = A[j]
		if tmp1 < 0 {
			tmp1 = -tmp1
		}
		if tmp2 < 0 {
			tmp2 = -tmp2
		}
		return tmp1 < tmp2
	})

	var ans2 int64 = 1
	for i = 0; i < K; i++ {
		var tmp = A[i] * ans2
		if tmp < 0 {
			tmp += mod
		}
		ans2 = tmp * ans2 % mod
	}

	if ans > ans2 {
		fmt.Printf("%d\n", ans)
	} else {
		fmt.Printf("%d\n", ans2)
	}
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
