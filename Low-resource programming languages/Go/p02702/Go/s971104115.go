package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var rdr = bufio.NewReaderSize(os.Stdin, 10000000)

func readLine() string {
	buf := make([]byte, 0, 10000000)
	for {
		l, p, err := rdr.ReadLine()
		if err != nil {
			panic(err)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

func main() {
	str := readLine()
	count := 0
	targetLen := 5
	if len(str) > 4 {
		for targetLen <= len(str) {
			for i := 0; i < len(str)-targetLen+1; i++ {
				slice := str[i : i+targetLen]
				num, _ := strconv.Atoi(slice)
				if num%2019 == 0 {
					count++
				}
			}
			targetLen++
		}
	}

	fmt.Println(count)
}
