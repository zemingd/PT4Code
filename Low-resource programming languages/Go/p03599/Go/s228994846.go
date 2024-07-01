package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	a := getInt()
	b := getInt()
	c := getInt()
	d := getInt()
	e := getInt()
	f := getInt()

	concentration := 0.0
	ansSum := 0
	ansSugar := 0
	for i := 0; ; i++ {
		untilA := (a * 100 * i)
		if untilA > f {
			break
		}
		for j := 0; ; j++ {
			untilB := untilA + (b * 100 * j)
			if untilB > f {
				break
			}
			if untilB == 0 {
				continue
			}
			for k := 0; ; k++ {
				untilC := untilB + (c * k)
				if untilC > f {
					break
				}
				for l := 0; ; l++ {
					sum := untilC + (d * l)
					if sum > f {
						break
					}
					water := untilB
					sugar := sum - untilB
					if float64(sugar)/(float64(water)/100.0) > float64(e) {
						break
					}

					tmp := float64(100*sugar) / float64(water+sugar)
					if tmp > concentration {
						concentration = tmp
						ansSum = sum
						ansSugar = sugar
					}
				}
			}
		}
	}

	fmt.Println(ansSum, ansSugar)
}

// -----------------------------------------

var scanner = wordScanner()

func wordScanner() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}

func getInt() int {
	scanner.Scan()
	i, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func getString() string {
	scanner.Scan()
	s := scanner.Text()
	return s
}
