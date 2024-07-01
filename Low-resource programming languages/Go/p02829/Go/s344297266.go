package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {

	answer := "123"
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	for i := 0; i < 2; i++ {
		sc.Scan()
		s := sc.Text()
		answer = strings.Replace(answer, s, "", 1)
	}

	fmt.Println(answer)
}
