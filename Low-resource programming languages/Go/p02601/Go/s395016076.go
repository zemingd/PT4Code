package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	A, B, C := getStdinInt3()
	K := getStdinInt()

	AOri := A
	BOri := B
	COri := C

	fmt.Printf("%d, %d, %d\n", A, B, C)

	for a := 0; a <= K; a++ {
		for b := 0; b <= K; b++ {
			for c := 0; c <= K; c++ {
				if a+b+c != K {
					continue
				}
				A = AOri
				B = BOri
				C = COri
				for n := 0; n < a; n++ {
					A = A * 2
				}
				for n := 0; n < b; n++ {
					B = B * 2
				}
				for n := 0; n < c; n++ {
					C = C * 2
				}
				if A < B && B < C {
					fmt.Printf("Yes\n")
					return
				}
			}
		}
	}
	fmt.Printf("No\n")
	return
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
