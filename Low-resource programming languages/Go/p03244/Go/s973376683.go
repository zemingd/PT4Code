package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main()  {
	var n int
	fmt.Scan(&n)

	v := make([]int,n)
	for i := 0; i < n; i++ {
		fmt.Scan(&v[i])
	}

	odd := make(map[int]int)
	even := make(map[int]int)
	maxOdd, maxOddVal, maxEven, maxEvenVal := 0, 0, 0, 0
	priorMaxOdd, priorMaxEven := 0, 0
	for i := 0; i < n; i++ {
		thisVal := v[i]
		if i % 2 == 0 {
			odd[thisVal]++
			if odd[thisVal] >= maxOddVal {
				maxOddVal = odd[thisVal]
				if maxOdd != thisVal{
					priorMaxOdd = maxOdd
				}
				maxOdd = thisVal
			}
		} else {
			even[thisVal]++
			if even[thisVal] >= maxEvenVal {
				maxEvenVal = even[thisVal]
				if maxEven != thisVal{
					priorMaxEven = maxEven
				}
				maxEven = thisVal
			}
		}
	}
	if maxOdd == maxEven {
		if odd[priorMaxOdd] + maxEvenVal < even[priorMaxEven] + maxOddVal {
			fmt.Println(outVal(n, maxOddVal, even[priorMaxEven]))
		} else {
			fmt.Println(outVal(n, odd[priorMaxOdd], maxEvenVal))
		}
	}else {
		fmt.Println(outVal(n, maxOddVal, maxEvenVal))
	}
}

func outVal(n, odd, even int) int {
	return n - odd - even
}
