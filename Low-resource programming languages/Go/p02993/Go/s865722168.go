package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	sc.Scan()
	t := sc.Text()

	for i := 0; i+1 < len(t); i++ {
		if t[i] == t[i+1] {
			fmt.Println("Bad")
			return
		}
	}
	fmt.Println("Good")

}