package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)

	scanner.Scan()
	S := scanner.Text()
	scanner.Scan()
	T := scanner.Text()

	if len(S)+1 == len(T) && S[:] == T[:len(S)] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
