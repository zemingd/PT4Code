package main

import (
	"bufio"
	"fmt"
	"os"
	// "strconv"
	// "strings"
)

var sc = bufio.NewScanner(os.Stdin)


func nextLine() string {
    sc.Scan()
    return sc.Text()
}

func solve() string {
	s := nextLine()	

	start := len(s)

	for start > 0  {
		
		if start >= 7 && s[start-7:start] == "dreamer" {
			
			start = start - 7
			
		} else if start >= 6 && s[start-6:start] == "eraser" {
			
			start = start - 6
			
		} else if start >= 5 && (s[start-5:start] == "dream" || s[start-5:start] == "erase") {
			
			start = start - 5
			
		} else {
			return "NO"
		}
	
	}
	return "YES"
}


func main() {	
	fmt.Println(solve())
}
