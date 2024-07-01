package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

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

func main() {
	ins := strings.Split(readLine(), " ")

	x, _ := strconv.Atoi(ins[0])
	a, _ := strconv.Atoi(ins[1])

	if x < a {
		fmt.Println(0)
	} else {
		fmt.Println(10)
	}
}
