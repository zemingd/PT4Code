package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewReaderSize(os.Stdin, 1024*1024*1)

func main() {
	N := getStdinInt()
	W := getStdinIntArr()

	min := math.MaxInt32
	for T := 0; T < N; T++ {
		S1 := 0
		S2 := 0
		for w := 0; w <= T; w++ {
			S1 += W[w]
		}
		for w := T + 1; w < N; w++ {
			S2 += W[w]
		}
		S := 0
		if S1 < S2 {
			S = S2 - S1
		} else {
			S = S1 - S2
		}
		if S < min {
			min = S
		}
	}

	fmt.Printf("%d\n", min)
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
