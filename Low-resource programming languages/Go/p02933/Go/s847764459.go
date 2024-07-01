package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var (
		a = ReadLineInt()[0]
		s = ReadLine()
	)

	if a >= 3200 {
		fmt.Println(s)
	} else {
		fmt.Println("red")
	}
}

/////////////////////////////////////////

func fln(format string, elements ...interface{}) {
	fmt.Printf(format+"\n", elements...)
}

var BufReader = bufio.NewReaderSize(os.Stdin, 1e6)

func ReadLine() string {
	a, _, _ := BufReader.ReadLine()
	return string(a)
}

func ReadLineInt() (result []int) {
	in := strings.Split(ReadLine(), " ")
	result = make([]int, 0, 2)
	for _, v := range in {
		t, _ := strconv.Atoi(v)
		result = append(result, t)
	}
	return
}