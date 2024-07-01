package main

import (
	"bufio"
	"fmt"
	"os"
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
	ins := strings.Split(readLine(), "")

	for i := 1; i < len(ins); i++ {
		if ins[i] == ins[i-1] {
			fmt.Println("Bad")
			return
		}
	}
	fmt.Println("Good")
}
