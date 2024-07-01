package main

import (
	"bufio"
	"fmt"
	"math/big"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewReaderSize(os.Stdin, 1024*1024*1)

func main() {
	list := getStdinIntArr64()
	N := list[0]
	K := list[1]

	//var ans float64 = 0
	ans := big.NewRat(0, 1)
	var i int64
	for i = 1; i <= N; i++ {
		var bit int64 = 1
		for {
			if K <= bit*i {
				//ans += 1.0 / (float64(i) * float64(bit))
				var r = big.NewRat(1, bit*N)
				ans = ans.Add(ans, r)
				break
			}
			bit <<= 1
		}
	}

	fmt.Printf("%s\n", ans.FloatString(20))
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
