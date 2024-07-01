package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

type Shop struct {
	NumDrink int
	Value    int
}

func main() {
	sc := bufio.NewScanner(os.Stdin)

	var N, M int
	var err error
	if sc.Scan() {
		s := splitWithSpace(sc.Text())
		if N, err = strconv.Atoi(s[0]); err != nil {
			panic(err)
		}
		if M, err = strconv.Atoi(s[1]); err != nil {
			panic(err)
		}
	}

	var shops []Shop
	for i := 0; i < N; i++ {
		if !sc.Scan() {
			panic(fmt.Errorf("cannot scan at row: %v", i))
		}
		s := splitWithSpace(sc.Text())
		var numDrink, value int
		if value, err = strconv.Atoi(s[0]); err != nil {
			panic(err)
		}
		if numDrink, err = strconv.Atoi(s[1]); err != nil {
			panic(err)
		}
		shops = append(shops, Shop{
			NumDrink: numDrink,
			Value:    value,
		})
	}

	// 昇順にソート
	sort.Slice(shops, func(i, j int) bool {
		return shops[i].Value < shops[j].Value
	})

	paymentAmount, numDrink := 0, 0
	for i := 0; i < N; i++ {
		numToBuy := shops[i].NumDrink
		if numDrink+numToBuy > M {
			numToBuy = M - numDrink
		}

		paymentAmount += shops[i].Value * numToBuy
		numDrink += numToBuy

		if numDrink >= M {
			break
		}
	}

	fmt.Println(paymentAmount)
}

func splitWithSpace(str string) []string {
	return strings.Split(str, " ")
}