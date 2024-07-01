package main

import (
	"fmt"
	"math"
)

type Item struct {
	Value  float64
	Weight float64
}

func main() {
	var ItemNumber int
	var MaxWeight float64
	sack := []Item{}

	fmt.Scanln(&ItemNumber, &MaxWeight)

	for i := 0; i < ItemNumber; i++ {
		X := Item{}
		fmt.Scanln(&X.Weight, &X.Value)
		sack = append(sack, X)
	}
	value, _ := Knapsack(sack,MaxWeight)
	fmt.Print(value)
}


func combinations(items []Item, ch chan []Item) {
	defer close(ch)

	p := int(math.Pow(2., float64(len(items))))

	for i := 0; i < p; i++ {
		set := []Item{}
		for j := 0; j < len(items); j++ {
			if (i>>uint(j))&1 == 1 {
				set = append(set, items[j])
			}
		}
		ch <- set
	}
}

func getSackWeight(set []Item) (r float64) {
	for _, i := range set {
		r += i.Weight
	}
	return
}

func getSackValue(set []Item) (r float64) {
	for _, i := range set {
		r += i.Value
	}
	return
}

func Knapsack(items []Item, maxWeight float64) (float64, []Item) {
	bestVal := 0.
	bestSack := []Item{}

	ch := make(chan []Item)
	go combinations(items, ch)

	for sack := range ch {
		if getSackWeight(sack) <= maxWeight {
			v := getSackValue(sack)
			if v > bestVal {
				bestVal = v
				bestSack = sack
			}
		}
	}
	return bestVal, bestSack
}
