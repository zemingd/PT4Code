package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
	"strings"
)
func avg (a, b float64) float64 {
	return (a+b)/2.0
}
func calc(arr []string, times int) {
	sort.Strings(arr)
	a, _ := strconv.Atoi(arr[0])
	tmpAvg := float64(a)
	for i := 1; i < len(arr); i++ {
		b, _ := strconv.Atoi(arr[i])
		tmpAvg = avg(float64(tmpAvg),float64(b))
	}
	fmt.Println(tmpAvg)
}

func main() {

	reader := bufio.NewReaderSize(os.Stdin, 1024*1024)
	times, _:= strconv.Atoi(readLine(reader))
	arr := strings.Split(readLine(reader), " ")
	calc(arr, times)
}

func readLine(reader *bufio.Reader) string {
	str, _, err := reader.ReadLine()
	if err == io.EOF {
		return ""
	}
	return strings.TrimRight(string(str), "\r\n")
}