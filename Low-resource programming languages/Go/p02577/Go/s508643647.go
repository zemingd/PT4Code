package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	bf := make([]byte, 10*1024*1024)
	sc.Buffer(bf, 10*1024*1024)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	s := sc.Text()

	c := 0

	for i := range s {
		c += int(s[i] - '0')
		c = c % 9
	}

	if c == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
