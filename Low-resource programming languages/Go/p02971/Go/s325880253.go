package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
)

func calc(arr []int, times int)  {
	for i := 0; i < len(arr); i++{
		max := 0
		for j := range arr{
			if i == j{
				continue
			}else if max < arr[j] {
				max = arr[j]
			}
		}
		fmt.Println(max)
	}
}

func main() {
	arr := make([]int,0)
	reader := bufio.NewReaderSize(os.Stdin, 1024*1024)
	times, _:= strconv.Atoi(readLine(reader))
	for i:= 0; i< times; i++ {
		tmp, _ := strconv.Atoi(readLine(reader))
		arr = append(arr, tmp)
	}
	calc(arr, times)
}

func readLine(reader *bufio.Reader) string {
	str, _, err := reader.ReadLine()
	if err == io.EOF {
		return ""
	}

	return strings.TrimRight(string(str), "\r\n")
}
