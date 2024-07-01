package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	strByte := make([]byte, 100000)
	readLen, _ := reader.Read(strByte)
	for i := 0; i < readLen; i += 2 {
		fmt.Printf("%c", strByte[i])
	}
}