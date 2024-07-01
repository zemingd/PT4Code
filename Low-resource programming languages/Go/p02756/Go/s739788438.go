package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
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

func reverseString(s string) string {
	rs := []rune(s)
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}
	return string(rs)
}

func reversRune(rs []byte) string {
	for i, j := 0, len(rs)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}
	return string(rs)
}

func main() {
	var S, Q string

	S = readLine()
	Q = readLine()

	count, err := strconv.Atoi(Q)
	if err != nil {
		panic(err)
	}

	reversCount := 0
	front := make([]byte, 0, 1000)
	tail := make([]byte, 0, 1000)
	for i := 0; i < count; i++ {
		query := readLine()
		ope := strings.Split(query, " ")
		T := ope[0]

		switch T {
		case "1":
			reversCount++
		case "2":
			F := ope[1]
			C := ope[2]
			switch F {
			case "1":
				if reversCount%2 == 0 {
					front = append(front, C[0])
				} else {
					tail = append(tail, C[0])
				}
			case "2":
				if reversCount%2 == 0 {
					tail = append(tail, C[0])
				} else {
					front = append(front, C[0])
				}
			}
		}
	}

	if reversCount%2 == 0 {
		fmt.Printf("%s%s%s\n", reversRune(front), S, tail)
	} else {
		fmt.Printf("%s%s%s\n", reversRune(tail), reverseString(S), front)
	}
}
