package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func readLine(rdr *bufio.Reader) string {
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
	scanner := bufio.NewReaderSize(os.Stdin, 1000000)
	paramN, _ := strconv.Atoi(readLine(scanner))
	params := strings.Split(readLine(scanner), " ")

	counter := int64(0)

	for i0 := 0; i0 < paramN; i0++ {
		if i0 < paramN-1 {
			for i1 := i0 + 1; i1 < paramN; i1++ {
				p0, _ := strconv.ParseInt(params[i0], 10, 64)
				p1, _ := strconv.ParseInt(params[i1], 10, 64)
				if int64(i1-i0) == (p0 + p1) {
					counter++
				}
			}
		}
	}

	fmt.Println(counter)
}
