package main

import (
	"bufio"
	"os"
	"strings"
	"strconv"
	"fmt"
)

func main() {
	S := scan()
	date := strings.Split(S, " ")
	month,_ := strconv.Atoi(date[0])
	day,_ := strconv.Atoi(date[1])
	if month <= day {
		fmt.Println(month)
		return
	}
	fmt.Println(month-1)
}

func scan() string {
	reader := bufio.NewReaderSize(os.Stdin, 1000000)
	bytes := make([]byte, 0, 1000000)
	for {
		line, isPrefix, _ := reader.ReadLine()
		bytes = append(bytes, line...)
		if !isPrefix {
			break
		}
	}
	return string(bytes)
}
