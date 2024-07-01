package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	In := readLineInt()
	A, B, C := In[0], In[1], In[2]
	fmt.Println(max(C-(A-B), 0))
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

//func min(a ...int) int {
//	result := int(^uint(0) >> 1)
//
//	for _, i := range a {
//		if result > i {
//			result = i
//		}
//	}
//
//	return result
//}

func max(a ...int) int {
	result := 0

	for _, i := range a {
		if result < i {
			result = i
		}
	}

	return result
}
