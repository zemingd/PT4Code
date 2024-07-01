package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var count int
	fmt.Scanf("%d", &count)

	list := strToInt(strings.Split(readLine(), " "))

	if len(list) < count {
		fmt.Printf("-1\n")
		return
	}

	fmt.Printf("%d\n", sortBreak(list[:count]))
}

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func readLine() string {
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
	return string(buf)
}

func strToInt(p []string) (ret []int) {
	for _, v := range p {
		t, _ := strconv.Atoi(v)
		ret = append(ret, t)
	}
	return ret
}

func sortBreak(list []int) int {
	check := 1
	var ret int

	index1 := index(list, 1)
	if index1 == -1 {
		return -1
	}

	for _, v := range list {
		if check == v {
			check++
		} else {
			ret++
		}
	}
	return ret
}

func index(list []int, match int) int {
	for k, v := range list {
		if v == match {
			return k
		}
	}
	return -1
}
