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
	K := list[1]
	d := make([]int, K)
	A := make([][]int, K)
	X := make([]int, N) // すぬけ君
	for i := 0; i < K; i++ {
		d[i] = getStdinInt()
		A[i] = getStdinIntArr()
	}

	for i := 0; i < K; i++ {
		for j := 0; j < d[i]; j++ {
			X[A[i][j]-1]++
		}
	}

	ans := 0
	for i := 0; i < N; i++ {
		if X[i] == 0 {
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
	buf := make([]byte, 0, 1024*1024*10)
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
