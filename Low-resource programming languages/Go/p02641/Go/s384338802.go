package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc.Split(bufio.ScanWords)
    X := scanInt()
    N := scanInt()
    p := make([]int,N)
    for i:= 0; i<N; i++ {
    	p[i] = scanInt()
	}
	sort.Ints(p)
    aru := false
    for i:= 0; i<N; i++ {
    	if p[i] == X {
    		aru = true
		}
	}
    if !aru {
    	fmt.Println(X)
	} else {
		gosa := 1000
		number := 0
		for i:= 1; i<=100; i++ {
			value := X-i
			if value < 0 {
				value = -value
			}
			if gosa > value {
				nai := true
				for j:=0; j<N; j++ {
					if p[j] == i {
						nai = false
						break
					}
				}
				if nai {
					// fmt.Println(i)
					gosa = value
					number = i
				}
			}
		}
		fmt.Println(number)
	}