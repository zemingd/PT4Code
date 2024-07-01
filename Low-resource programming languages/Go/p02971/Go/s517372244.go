package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

type pair struct {
	val int
	idx int
}

func main() {
	N := getStdinInt()
	A := make([]int, N)
	Asort := make([]pair, N)
	for i := 0; i < N; i++ {
		A[i] = getStdinInt()
		Asort[i] = pair{A[i], i}
	}

	sort.Slice(Asort, func(i, j int) bool {
		return Asort[i].val > Asort[j].val
	})

	for i := 0; i < N; i++ {
		for n := 0; n < N; n++ {
			if i == Asort[n].idx {
				continue
			}
			fmt.Printf("%d\n", Asort[n].val)
			break
		}
	}
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
