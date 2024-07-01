package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var rdr = bufio.NewReaderSize(os.Stdin, 10000)

func readLine() string {
	buf := make([]byte, 0, 10000)
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

func main() {
	readLine()
	ins := strings.Split(readLine(), " ")

	n := len(ins)
	var p []int
	for _, v := range ins {
		pi, _ := strconv.Atoi(v)
		p = append(p, pi)
	}

	var count int
	for i := 1; i < n-1; i++ {
		if (p[i-1] < p[i] && p[i] < p[i+1]) || (p[i+1] < p[i] && p[i] < p[i-1]) {
			count++
		}
	}
	fmt.Println(count)
}
