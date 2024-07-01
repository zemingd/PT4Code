package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	getStdinInt64()
	A := getStdinIntArr64()
	B := getStdinIntArr64()

	var i int64 = 0
	var ans int64 = 0
	for ; i < int64(len(A)); i++ {
		var tmp int64 = 0
		if i == 0 {
			if B[i] >= A[i] {
				tmp += A[i]
			} else {
				tmp += B[i]
			}
			B[i] -= tmp
		} else if i < int64(len(B)) {
			if B[i-1]+B[i] >= A[i] {
				tmp += A[i]
				B[i] -= A[i] - B[i-1]
			} else {
				tmp += B[i-1] + B[i]
				B[i] -= tmp - B[i-1]
			}
		} else {
			if B[i-1] >= A[i] {
				tmp += A[i]
			} else {
				tmp += B[i-1]
			}
			//B[i] -= tmp
		}
		ans += tmp
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
func getStdinInt4() (int, int, int, int) {
	list := getStdinIntArr()
	return list[0], list[1], list[2], list[3]
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
