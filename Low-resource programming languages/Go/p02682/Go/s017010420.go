package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	list := getStdinIntArr()
	A := list[0]
	B := list[1]
	C := list[2]
	K := list[3]

	if A >= K {
		fmt.Printf("%d", K)
		return
	}
	K = K - A

	if B >= K {
		fmt.Printf("%d", A)
		return
	}
	K = K - B

	if C >= K {
		fmt.Printf("%d", A-K)
		return
	}
	fmt.Printf("%d\n", A-C)
}

func getStdin() string {
	sc.Scan()
	return sc.Text()
}
func getStdinInt() int {
	sc.Scan()
	rtn, _ := strconv.Atoi(sc.Text())
	return rtn
}
func getStdinInt64() int64 {
	sc.Scan()
	rtn, _ := strconv.ParseInt(sc.Text(), 10, 64)
	return rtn
}
func getStdinIntArr() []int {
	sc.Scan()
	str := sc.Text()
	list := strings.Split(str, " ")
	rtn := make([]int, len(list))
	for idx, val := range list {
		rtn[idx], _ = strconv.Atoi(val)
	}
	return rtn
}
func getStdinIntArr64() []int64 {
	sc.Scan()
	str := sc.Text()
	list := strings.Split(str, " ")
	rtn := make([]int64, len(list))
	for idx, val := range list {
		rtn[idx], _ = strconv.ParseInt(val, 10, 64)
	}
	return rtn
}
