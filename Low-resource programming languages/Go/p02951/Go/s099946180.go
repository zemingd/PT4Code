package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func readLine() []string {
	rdr := bufio.NewReaderSize(os.Stdin, 1000000)
	buf := make([]byte, 0, 1000000)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return strings.Split(string(buf), " ")
}

func readAsInts(strs []string) []int {
	ret := make([]int, len(strs))
	for i, v := range strs {
		j, err := strconv.Atoi(v)
		if err != nil {
			panic("fail to convert")
		}
		ret[i] = j
	}
	return ret
}

func main() {
	vals := readAsInts(readLine())
	subs := vals[2] - (vals[0] - vals[1])
	var ans int
	if subs < 0 {
		ans = 0
	} else {
		ans = subs
	}
	fmt.Printf("%v\n", ans)
}
