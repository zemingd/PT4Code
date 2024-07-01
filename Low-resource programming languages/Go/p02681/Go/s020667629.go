package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	S := getStdin() // 文字列入力
	T := getStdin() // 文字列入力

	if S == T[:len(S)] {
		fmt.Printf("Yes\n")
	} else {
		fmt.Printf("No\n")
	}
}

var sc = bufio.NewScanner(os.Stdin)

func getStdin() string {
	sc.Scan()
	return sc.Text()
}
