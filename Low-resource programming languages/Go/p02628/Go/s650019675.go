package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	_, K := getStdinInt2()
	p := getStdinIntArr()

	sort.Ints(p)

	sum := 0
	for i := 0; i < K; i++ {
		sum += p[i]
	}

	fmt.Printf("%d\n", sum)
}

var sc = bufio.NewReaderSize(os.Stdin, 1024*1024*10)

func getStdin() string {
	return readLine()
}
func getStdinInt2() (int, int) {
	list := getStdinIntArr()
	return list[0], list[1]
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
