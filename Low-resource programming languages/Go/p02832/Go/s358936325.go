package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	readLineInt()
	current, result := 1, 0
	for _, v := range readLineInt() {
		if v != current {
			result++
		} else {
			current++
		}
	}
	if current == 1 {
		fmt.Println("-1")
	} else {
		fmt.Println(result)
	}
}

/////////////////////////////////////////
func readLineInt() []int {
	result := make([]int, 0)
	for _, v := range strings.Split(readLine(), " ") {
		i, _ := strconv.Atoi(v)
		result = append(result, i)
	}
	return result
}

var reader = bufio.NewReaderSize(os.Stdin, 1e6)

func readLine() string {
	result := make([]byte, 0, 1e6)
	for {
		line, remains, e := reader.ReadLine()
		if e != nil {
			panic(e)
		}
		result = append(result, line...)
		if !remains {
			break
		}
	}
	return string(result)
}