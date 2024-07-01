package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	tmp, _ := reader.ReadString('\n')
	tmp = strings.Trim(tmp, "\n")

	if tmp[1] != tmp[2] {
		fmt.Println("No")
		return
	}

	if tmp[3] != tmp[4] {
		fmt.Println("No")
		return
	}

	fmt.Println("Yes")

	return
}