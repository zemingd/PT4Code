package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {

	answer := "123"
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	s := sc.Text()
	sc.Scan()
	t := sc.Text()
	answer = t + s

	fmt.Println(answer)
}
