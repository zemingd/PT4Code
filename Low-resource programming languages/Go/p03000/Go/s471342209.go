package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewReaderSize(os.Stdin, 1024*1024*1)

func main() {
	list := getStdinIntArr()
	N := list[0]
	X := list[1]
	L := getStdinIntArr()
	D := make([]int, 0)
	D = append(D, 0)

	cnt := 1
	for i := 0; i < N; i++ {
		D1 := D[i] + L[i]
		D = append(D, D1)
		if D1 > X {
			break
		}
		cnt++
	}

	fmt.Printf("%d\n", cnt)
}

func getStdin() string {
	return readLine()
}
func getStdinArr() []string {
	str := getStdin()
	list := strings.Split(str, " ")
	return list
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
