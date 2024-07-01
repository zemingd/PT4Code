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
	lastColor := new(Color)
	for i := 0; i < len(arr); i ++ {
		isCheck := true
		//if i > 0 && arr[i] > arr[i-1] {
		//	lastColor.MaxNumber = arr[i]
		//	continue
		//}
		for j := 0; j < len(colorArr); j++ {
			if colorArr[j].MaxNumber < arr[i]{
				colorArr[j].MaxNumber = arr[i]
				isCheck = false
				*lastColor = colorArr[j]
				break
			}
		}
		if isCheck {
			colorS := new(Color)
			colorS.MaxNumber = arr[i]
			colorArr = append(colorArr, *colorS)
			*lastColor = *colorS
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
