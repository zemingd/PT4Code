package main

import (
    "bufio"
    "fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var S string
	fmt.Scan(&S)
	if S == "ABC"{
		fmt.Println("ARC")
	} else {
		fmt.Println("ABC")
	}
}