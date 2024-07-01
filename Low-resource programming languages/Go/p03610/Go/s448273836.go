package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	reader := bufio.NewReaderSize(os.Stdin, 100000)
	strByte := make([]byte, 100000)
	readLen, _ := reader.Read(strByte)
	ans := make([]byte, 0, readLen/2)
	for i := 0; i < readLen; i += 2 {
		ans = append(ans, strByte[i])
	}
	fmt.Println(string(ans))
}