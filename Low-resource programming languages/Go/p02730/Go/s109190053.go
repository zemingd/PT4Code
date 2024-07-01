package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	S := readLine()

	if !ReverseCheck(S) {
		fmt.Println(1)
		goto Fail
	}
	if !ReverseCheck(S[:(len(S)-1)/2]) {
		fmt.Println(2)
		goto Fail
	}
	if !ReverseCheck(S[((len(S) + 2) / 2):]) {
		fmt.Println(3)
		goto Fail
	}

	fmt.Println("Yes")
	return
Fail:
	fmt.Println("No")
}

func ReverseCheck(s string) bool {
	//fmt.Println(s)
	sa := strings.Split(s, "")

	for i := 0; i < len(sa); i++ {
		if sa[i] != sa[len(sa)-i-1] {
			return false
		}
	}
	return true
}

/////////////////////////////////////////

//func readLineInt() []int {
//	result := make([]int, 0)
//	for _, v := range strings.Split(readLine(), " ") {
//		i, _ := strconv.Atoi(v)
//		result = append(result, i)
//	}
//	return result
//}

var reader = bufio.NewReaderSize(os.Stdin, 1e6)

func readLine() string {
	result := make([]byte, 0, 1e6)
	for {
		line, remains, e := reader.ReadLine()
		if e != nil {
			panic(e)
		}
		result = append(result, line...)
		if !remains {
			break
		}
	}
	return string(result)
}
