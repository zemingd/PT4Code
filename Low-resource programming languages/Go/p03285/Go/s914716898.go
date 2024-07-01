package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

func main()  {
	sc := bufio.NewScanner(os.Stdin)
	
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	flag := "No"
	for x4 := 0; x4 <= 100; x4++ {
		for x7 := 0; x7 <= 100; x7++ {
			if x4*4 + x7*7 == n {
				flag = "Yes"
			}
		}
	}
	fmt.Println(flag)
}