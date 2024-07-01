package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	// Get a number from stdio and convert it
	//sc.Split(bufio.ScanWords)
	sc.Scan()

	_, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}

	// Get some numbers from stdio and convert it
	sc.Scan()
	numString := strings.Split(sc.Text(), " ")

	rods := make([]int, len(numString))
	var err error

	for i := 0; i < len(rods); i++ {
		rods[i], err = strconv.Atoi(numString[i])
		if err != nil {
			panic(err)
		}
	}

	var a, b, c, sum int
	for i := 0; i < len(rods)-2; i++ {
		a = rods[i]
		for j := i + 1; j < len(rods)-1; j++ {
			b = rods[j]
			for k := j + 1; k < len(rods); k++ {
				c = rods[k]
				if a < b+c && b < c+a && c < a+b {
					//fmt.Printf("a:%d,b:%d,c:%d\n", a, b, c)
					sum++
				}
				//				}
			}
		}
	}

	fmt.Println(sum)

}