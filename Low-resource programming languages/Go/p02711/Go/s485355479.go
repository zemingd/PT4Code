package main

import (
    "bufio"
    "fmt"
	"os"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var X string
	fmt.Scan(&X)
	if strings.Contains(X, "7") {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}