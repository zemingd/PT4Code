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
	tiles := []rune(readString())
	numTiles := make([]int, len(tiles))
	for k, v := range tiles {
		numTiles[k] = int(v) - 48
	}

	oneSlice := make([]int, len(tiles))
	zeroSlice := make([]int, len(tiles))
	oneSlice[0] = 1
	var zero, one, sum, i int
	for i = 0; i < len(tiles)-1; i++ {
		zeroSlice[i] = i % 2
		oneSlice[i+1] = i % 2
	}
	zeroSlice[i] = i % 2

	for key, val := range numTiles {
		if val == zeroSlice[key] {
			zero++
		} else {
			one++
		}
	}

	if zero < one {
		sum = one
	} else {
		sum = zero
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
