package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	s := readLineInt()[0]
	a := make([]int, 0, 1e6)
	a = append(a, s)
	Loop(1, 1e7, func(i int) {
		Current := f(a[i-1])
		for _, v := range a {
			if v == Current {
				fmt.Println(i + 1)
				os.Exit(0)
			}
		}
		a = append(a, Current)
	})
}

func f(n int) int {
	if (n % 2) == 0 {
		return n / 2
	} else {
		return (3 * n) + 1
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