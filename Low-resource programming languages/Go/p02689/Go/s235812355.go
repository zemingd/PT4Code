package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewReaderSize(os.Stdin, 1024*1024*15)
var sc2 = bufio.NewScanner(os.Stdin)

func main() {
	list := getStdinIntArr()
	N := list[0]
	M := list[1]
	H := getStdinIntArr()
	flag := make([]bool, N)
	for i := 0; i < M; i++ {
		list2 := getStdinIntArr()
		A := list2[0] - 1
		B := list2[1] - 1
		if H[A] <= H[B] {
			flag[A] = true
		}
		if H[B] <= H[A] {
			flag[B] = true
		}
	}

	ans := 0
	for _, val := range flag {
		if !val {
			ans++
		}
	}

	fmt.Printf("%d\n", ans)
}

func getStdin() string {
	return readLine()
}
func getStdin2() string {
	sc2.Scan()
	return sc2.Text()
}
func getStdinInt() int {
	str := getStdin()
	rtn, _ := strconv.Atoi(str)
	return rtn
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
func getStdinIntArr2() []int {
	str := getStdin2()
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
	buf := make([]byte, 0, 1024*1024*15)
	for {
		l, p, e := sc.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}