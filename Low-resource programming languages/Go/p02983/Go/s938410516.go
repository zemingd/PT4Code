package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
	"strconv"
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
	in := readLine()
	ins := strings.Split(in, " ")

	l, _ := strconv.Atoi(ins[0])
	s, _ := strconv.Atoi(ins[1])

	i, j := l, s
	var min int = 100000000
	for ; i < j; i++ {
		for ; j > i; j-- {
			if a := (i % 2019) * (j % 2019); min > a {

				min = a
			}
		}
	}

	fmt.Println(min)
}
