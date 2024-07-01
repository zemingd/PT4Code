package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewReaderSize(os.Stdin, 1024*1024*10)

func main() {
	list := getStdinArr()
	N, _ := strconv.Atoi(list[0])
	M, _ := strconv.ParseFloat(list[1], 64)
	ans := float64(N) * M
	i := int(roundDown(ans, 0))
	fmt.Printf("%d\n", i)
}

// RoundDown 切り捨て

func roundDown(num, places float64) float64 {
	shift := math.Pow(10, places)

	return math.Trunc(num*shift) / shift

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

func getStdinArr() []string {
	str := getStdin()
	list := strings.Split(str, " ")
	return list
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
