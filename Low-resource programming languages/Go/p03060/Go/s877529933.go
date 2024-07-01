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
	_ = readLine()
	vstr := strings.Split(readLine(), " ")
	cstr := strings.Split(readLine(), " ")

	var a []int

	for i := 0; i < len(vstr); i++ {
		vvalue, _ := strconv.Atoi(vstr[i])
		cvalue, _ := strconv.Atoi(cstr[i])
		a = append(a, vvalue-cvalue)
	}

	var ans int

	for i := 0; i < len(a); i++ {
		if a[i] > 0 {
			ans += a[i]
		}
	}

	fmt.Println(ans)
}
