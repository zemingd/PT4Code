package main

import (
	"bufio"
	"fmt"
	"os"
)

//const (
//	MaxIntValue = int(^uint(0) >> 1)
//)

func main() {
	S := readLine()

	if S[2] == S[3] && S[4] == S[5] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

/////////////////////////////////////////
var scanner = bufio.NewScanner(os.Stdin)

func init() {
	//scanner.Split(bufio.ScanWords)
}
func readLine() string {
	scanner.Scan()
	return scanner.Text()
}