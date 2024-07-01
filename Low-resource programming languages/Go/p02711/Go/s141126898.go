package main

import {
	"fmt"
)

func main() {
	var testCases int
	fmt.Scanln(&testCases)

	for testCase := 1; testCase <= testCases; testCase++ {
		var input string
		fmt.Scan(&input)
		inputStr := []rune(input)
      	flag := false

      	for i := 0; i <= 3; i++ {
          	if inputStr[i] == '7' {
            	flag = true
              	break
            }
        }
		
      	if flag {
        	fmt.Printf("Case #%d: Yes\n", testCase)
        } else {
          	fmt.Printf("Case #%d: No\n", testCase)
        }
	}
}
