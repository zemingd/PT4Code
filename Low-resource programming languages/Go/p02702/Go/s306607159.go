package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	a := sc.Text()
	b := len(a)
	c := 0
	X := 0
	i := 0
	j := 0
	if b >= 4{
		for i = 4; i < b + 1; i++{
			for j = 0; j < b - i + 1; j++{
				c, _ = strconv.Atoi(a[j:j+i])
				if c % 2019 == 0{
					X = X + 1
				}
			}
		}
	}
	
	fmt.Println(X)
}
