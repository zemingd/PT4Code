package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
)

func main() {
	N := int(readInt()) - 2
	B := readInts()
	max := B[0]
	for i, b := range B {
		if i < N {
			if b > B[i+1] {
				max += B[i+1]
			} else {
				max += b
			}
		} else {
			max += b
		}
	}
	fmt.Println(max)
}

var reader = bufio.NewReaderSize(os.Stdin, 1024*1024)

func Min(a, b int64) int64 {
	if a > b {
		return b
	}
	return a
}

func Max(a, b int64) int64 {
	if a > b {
		return a
	}
	return b
}

func readInt() int64 {
	temp := readLine()
	res, _ := strconv.ParseInt(temp, 10, 64)
	return res
}

func readInts() []int64 {
	nums := strings.Split(readLine(), " ")
	res := make([]int64, len(nums))
	for i, str := range nums {
		res[i], _ = strconv.ParseInt(str, 10, 64)
	}
	return res
}

func readLine() string {
	str, _, err := reader.ReadLine()
	if err == io.EOF {
		return ""
	}
	return strings.TrimRight(string(str), "\r\n")
}
