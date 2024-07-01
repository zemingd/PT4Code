package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
)

type Color struct {
	MaxNumber int
	Color int
}

func calc(arr []int, times int)  {
	colorArr := make([]Color,0)
	color := 0
	for i := 0; i < len(arr); i ++ {
		isCheck := true
		for j := 0; j < len(colorArr); j++ {
			if colorArr[j].MaxNumber < arr[i]{
				colorArr[j].MaxNumber = arr[i]
				isCheck = false
				break
			}
		}
		if isCheck {
			colorS := new(Color)
			colorS.Color = color
			colorS.MaxNumber = arr[i]
			colorArr = append(colorArr, *colorS)	
		}
	}
	fmt.Println(len(colorArr))
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
