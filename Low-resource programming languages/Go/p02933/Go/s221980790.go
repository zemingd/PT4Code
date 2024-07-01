package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
)

func main() {

	reader := bufio.NewReaderSize(os.Stdin, 1024*1024)
	a, _:= strconv.Atoi(readLine(reader))
	if a >= 3200 {
		fmt.Println(readLine(reader))
	} else {
		fmt.Println("red")
	}
}

func readLine(reader *bufio.Reader) string {
	str, _, err := reader.ReadLine()
	if err == io.EOF {
		return ""
	}
	return strings.TrimRight(string(str), "\r\n")
}