package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	Result := 9999999999
	S := ReadLine()

	for i := 0; i < len(S)-2; i++ {
		LS := S[i : i+3]
		LSInt, _ := strconv.Atoi(LS)
		Result = Min(Result, Abs(753-LSInt))
	}

	fmt.Println(Result)
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

func Min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

func Abs(i int) int {
	if i >= 0 {
		return i
	}
	return i * -1
}
