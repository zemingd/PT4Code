package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var (
	in  = bufio.NewReader(os.Stdin)
	out = bufio.NewWriter(os.Stdout)
)

func main() {
	var n int
	_, _ = fmt.Scanf("%d", &n)
	values := readInt64Slice()
	costs := readInt64Slice()
	var sum int64
	for k, v := range values {
		if v > costs[k] {
			sum += v - costs[k]
		}
	}
	fmt.Println(sum)
}

func readInt64Slice() []int64 {
	line := readStringSlice()
	slice := make([]int64, 0, len(line))
	for _, tmp := range line {
		val, err := strconv.ParseInt(tmp, 10, 64)
		if err != nil {
			fmt.Println(err)
			os.Exit(1)
		}
		slice = append(slice, val)
	}
	return slice
}
func readFloat64Slice() []float64 {
	line := readStringSlice()
	slice := make([]float64, 0, len(line))
	for _, tmp := range line {
		val, err := strconv.ParseFloat(tmp, 64)
		if err != nil {
			fmt.Println(err)
			os.Exit(1)
		}
		slice = append(slice, val)

	}
	return slice
}
func readString() string {
	s, _, _ := in.ReadLine()
	return string(s)
}
func readStringSlice() []string {
	line := readString()
	s := strings.Split(line, " ")
	return s
}
func dump(value ...interface{}) {
	for _, v := range value {
		fmt.Printf("%#v\n", v)
	}
}
