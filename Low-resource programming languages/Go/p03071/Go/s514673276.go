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
	input := strings.Split(readLine(), " ")
	var a, b, ans int

	a, _ = strconv.Atoi(input[0])
	b, _ = strconv.Atoi(input[1])

	if a > b {
		ans += a
		a--
	} else {
		ans += b
		b--
	}

	if a > b {
		ans += a
		a--
	} else {
		ans += b
		b--
	}

	fmt.Println(ans)
}
