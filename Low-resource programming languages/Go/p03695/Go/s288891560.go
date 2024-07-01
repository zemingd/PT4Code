package main

import (
	"fmt"
	"os"
)

type rateTable []int

func main() {
	var num int
	_, err := fmt.Fscanf(os.Stdin, "%d", &num)
	if err != nil {
		panic(err)
	}
	t := NewTable()
	for i := 0; i < num; i++ {
		var s int
		_, err = fmt.Fscanf(os.Stdin, "%d", &s)
		if err != nil {
			panic(err)
		}
		t.addPerson(s)
	}

	min, max := t.getScore()
	fmt.Printf("%d %d\n", min, max)
}

func NewTable() rateTable {
	t := make(rateTable, 9)
	return t
}

func (t rateTable) addPerson(score int) {
	if score > 3200 {
		score = 3200
	}
	k := int(score / 400)
	t[k]++
}

func (t rateTable) getScore() (min, max int) {
	wildcard := 0
	for i, v := range t {
		if i == 8 {
			wildcard = v
			continue
		} else {
			if v > 0 {
				min++
			}
		}
	}

	if min == 0 && wildcard > 0 {
		min = 1
		wildcard -= 1
	}
	max = min + wildcard
	if max > 8 {
		max = 8
	}
	return
}
