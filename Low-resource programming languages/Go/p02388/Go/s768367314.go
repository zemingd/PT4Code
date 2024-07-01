package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var i int
	fmt.Scan(&i)
	fmt.Println(i*i*i)
}

