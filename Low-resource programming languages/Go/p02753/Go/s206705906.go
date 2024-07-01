package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	s := nextString()
  	
  	if s[0] == s[1] && s[1] == s[2] {
    	fmt.Println("No")
  	} else {
    	fmt.Println("Yes")
  	}
}
