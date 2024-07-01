package main

import (
	"bufio"
	"strconv"
	"os"
	"fmt"
)

type currency int
type profit int

// assume that the size of currencies > 2
func calcMaxProfit(currencies []currency) profit {
	x, y := currencies[0], currencies[1]
	var initialBottom currency
	if x > y {
		initialBottom = y
	} else {
		initialBottom = x
	}
	return doCalcMaxProfit(initialBottom, profit(y - x), currencies[2:])
}

func doCalcMaxProfit(initialBottom currency, initialProfit profit, currencies []currency) profit {
	bottom := initialBottom
	maxProfit := initialProfit
	for _, currency := range currencies {
		if bottom <= currency {
			profit := profit(currency - bottom)
			if profit > maxProfit {
				maxProfit = profit
			}
		} else if currency < bottom {
			bottom = currency
		}
	}
	return maxProfit
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	n, err := nextInt(sc)
	if err != nil {
		panic(err)
	}

	currencies := make([]currency, n)
	for i := 0; i < n; i++ {
		c, err := nextInt(sc)
		if err != nil {
			panic(err)
		}
		currencies[i] = currency(c)
	}

	fmt.Println(calcMaxProfit(currencies))
}

func nextText(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func nextInt(sc *bufio.Scanner) (int, error) {
	return strconv.Atoi(nextText(sc))
}
