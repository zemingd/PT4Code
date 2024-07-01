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
	var n int
	fmt.Scan(&n)

	str := readLine()

	strSlice := strings.Split(str, " ")

	var intSlice []int

	for _, sv := range strSlice {
		iv, _ := strconv.Atoi(string(sv))
		intSlice = append(intSlice, iv)
	}

	count, prevValue := 0, 0

	for i := 0; i < len(intSlice); i++ {
		iv := intSlice[i]

		if prevValue > iv {
			count += prevValue - iv
		}

		if prevValue-iv <= 0 {
			prevValue = iv
			continue
		}

		prevValue = iv + (prevValue - iv)
	}

	fmt.Println(count)
}
