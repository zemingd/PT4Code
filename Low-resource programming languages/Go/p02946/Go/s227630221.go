package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	In := readLineInt()
	K, X := In[0], In[1]

	Result := make([]int, 0, K*2)
	Loop(0, K, func(i int) {
		Result = append(Result, X+i)
		if i != 0 {
			Result = append(Result, X-i)
		}
	})
	sort.Ints(Result)

	for i, v := range Result {
		fmt.Print(v)
		if i != (K*2)-1 {
			fmt.Print(" ")
		}
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

func Loop(start, end int, f func(i int)) {
	for i := start; i < end; i++ {
		f(i)
	}
}