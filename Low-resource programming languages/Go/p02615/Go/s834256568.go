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
	N := getStdinInt64()
	A := getStdinIntArr64()
	Apush := make([]int64, 0)

	sort.Slice(A, func(i, j int) bool { return A[i] > A[j] })
	var i int64 = 0
	var ans int64 = 0
	var prev int64 = A[0]
	var prevcnt int64 = 0
	for ; i < N; i++ {
		var push int64 = A[i]
		if i == N-1 {
			if prevcnt == 1 {
				var j int64 = 0
				for ; j < prevcnt; j++ {
					Apush = append(Apush, prev)
				}
			} else {
				var j int64 = 0
				for ; j <= prevcnt; j++ {
					Apush = append(Apush, prev)
				}
			}
			prevcnt = 1
			prev = A[i]
		} else if prev == push {
			push = prev
			prevcnt++
		} else if prev != push || i == N-1 {
			if prevcnt == 1 {
				var j int64 = 0
				for ; j < prevcnt; j++ {
					Apush = append(Apush, prev)
				}
			} else {
				var j int64 = 0
				for ; j <= prevcnt; j++ {
					Apush = append(Apush, prev)
				}
			}
			prevcnt = 1
			prev = A[i]
		}
		prev = A[i]
	}
	for i = 0; i < N-1; i++ {
		ans += Apush[i]
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
