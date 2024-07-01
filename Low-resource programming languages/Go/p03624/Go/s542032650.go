package main

import (
	"bufio"
	"fmt"
	"os"
)

var reader = bufio.NewReader(os.Stdin)

func main() {
	s := nextLine()
	f := make([]bool, 26)
	for _, c := range s {
		f[c-97] = true
	}
	for i, e := range f {
		if !e {
			fmt.Println(string(i + 97))
			return
		}
	}
	fmt.Println("None")
	return
}

func nextLine() string {
	var buf, line []byte
	isPrefix := true
	var err error
	for isPrefix {
		buf, isPrefix, err = reader.ReadLine()
		if err != nil {
			panic(err)
		}
		line = append(line, buf...)
	}
	return string(line)

}
