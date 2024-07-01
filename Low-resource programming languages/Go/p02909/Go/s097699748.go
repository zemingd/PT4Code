package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	switch readLine() {
	case "Sunny":
		fmt.Println("Cloudy")
	case "Cloudy":
		fmt.Println("Rainy")
	case "Rainy":
		fmt.Println("Sunny")
	}
}

/////////////////////////////////////////
//func readBigLineInt() []int {
//	result := make([]int, 0)
//	for _, v := range strings.Split(readBigLine(), " ") {
//		i, _ := strconv.Atoi(v)
//		result = append(result, i)
//	}
//	return result
//}
//
//var reader = bufio.NewReaderSize(os.Stdin, 1e6)
//
//func readBigLine() string {
//	result := make([]byte, 0, 1e6)
//	for {
//		line, remains, e := reader.ReadLine()
//		if e != nil {
//			panic(e)
//		}
//		result = append(result, line...)
//		if !remains {
//			break
//		}
//	}
//	return string(result)
//}

var scanner = bufio.NewScanner(os.Stdin)

func init() {
	//scanner.Split(bufio.ScanWords)
}
func readLine() string {
	scanner.Scan()
	return scanner.Text()
}