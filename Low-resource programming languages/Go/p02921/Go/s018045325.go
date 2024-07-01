package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	S, _ := reader.ReadString('\n')
	T, _ := reader.ReadString('\n')
	var n int
	for i:=0;i<3;i++ {
		if S[i] == T[i] {
			n++
		}
	}
	fmt.Println(n)
}