package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewReaderSize(os.Stdin, 1024*1024*1)

type tenbou struct {
	h    int
	flag bool
}

func main() {
	list := getStdinIntArr()
	N := list[0]
	M := list[1]
	H := getStdinIntArr()
	tenbous := make([]tenbou, N)
	for i := 0; i < N; i++ {
		tenbous[i].h = H[i]
		tenbous[i].flag = true
	}
	for i := 0; i < M; i++ {
		list2 := getStdinIntArr()
		A := list2[0] - 1
		B := list2[1] - 1
		if tenbous[A].h <= tenbous[B].h {
			tenbous[A].flag = false
		}
		if tenbous[B].h <= tenbous[A].h {
			tenbous[B].flag = false
		}
	}

	ans := 0
	for i := 0; i < N; i++ {
		if tenbous[i].flag {
			ans++
		}
	}

	fmt.Printf("%d\n", ans)
}

func getStdin() string {
	return readLine()
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
	buf := make([]byte, 0, 1024*1024*1)
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
