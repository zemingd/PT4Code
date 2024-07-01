package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	K := getStdinInt64()
	//initmul(K)
	var i int64 = 0
	var temp int64 = 0
	for i = 0; i < 1000000; i++ {
		temp = (temp*10 + 7) % K
		if temp == 0 {
			fmt.Printf("%d\n", i+1)
			return
		}
	}
	fmt.Printf("%d\n", -1)
}

/*
func isMultiple(s string, K int64) bool {
	var temp int64 = 0
	var i int64 = 0
	for i = 0; i < int64(len(s)); i++ {
		temp = (temp*10 + 7) % K
	}
	if temp == 0 {
		return true
	}
	return false
}
*/

/*
var mod7toK int64 = 0
var mod7 = make([]int64, 0)

func initmul(K int64) {
	mod7toK = 7 % K
	var pow int64 = 1
	var i int64 = 0
	for i = 0; i < 100; i++ {
		mod7 = append(mod7, mod7toK*pow%K)
		pow *= 10
	}
}

func isMultiple(s string) bool {
	var temp int64 = 0
	var i int64 = 0
	for i = 0; i < int64(len(s)); i++ {
		temp = mod7[i] + mod7toK
	}
	if temp == 0 {
		return true
	}
	return false
}
*/

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
