package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	s := bufio.NewScanner(os.Stdin)
	s.Scan()
	str1 := []byte(s.Text())
	s.Scan()
	str2 := []byte(s.Text())

	var count int
	for k, _ := range str1 {
		if str1[k] != str2[k] {
			count += 1
		}
	}

	fmt.Println(count)

}
