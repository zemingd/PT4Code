package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	var headTmp = nextLine()
	// fmt.Println(headTmp)
	// fmt.Println(headTmp[0])

	var head = strings.Split(headTmp, " ")
	// fmt.Println(head[0])
	// fmt.Println(head[1])
	if head[0] == head[1] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")

	}

}
