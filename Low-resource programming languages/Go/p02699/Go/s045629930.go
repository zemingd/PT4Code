package main

import (
    "bufio"
    "fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var S, W int
	fmt.Scan(&S,&W)
	if S <= W {
		fmt.Println("unsafe")
	} else {
		fmt.Println("safe")
	}
	
}