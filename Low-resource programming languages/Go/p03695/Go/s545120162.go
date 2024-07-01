package main

import (
	"fmt"
	"os"
)

type rateTable map[string]int

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
	t["gray"] = 0
	t["brown"] = 0
	t["green"] = 0
	t["cyan"] = 0
	t["blue"] = 0
	t["yellow"] = 0
	t["orange"] = 0
	t["red"] = 0
	t["wildcard"] = 0
	return t
}

func (t rateTable) addPerson(score int) {
	switch {
	case 1 <= score && score < 400:
		t["gray"]++
	case 400 <= score && score < 800:
		t["brown"]++
	case 800 <= score && score < 1200:
		t["green"]++
	case 1200 <= score && score < 1600:
		t["cyan"]++
	case 1600 <= score && score < 2000:
		t["blue"]++
	case 2000 <= score && score < 2400:
		t["yellow"]++
	case 2400 <= score && score < 2800:
		t["orange"]++
	case 2800 <= score && score < 3200:
		t["red"]++
	case 3200 <= score && score <= 4800:
		t["wildcard"]++
	default:
	}
}

func (t rateTable) getScore() (min, max int) {
	wildcard := 0
	for k, v := range t {
		if k == "wildcard" {
			wildcard = v
			continue
		} else {
			if v > 0 {
				min++
			}
		}
	}

	max = min + wildcard
	if max > 8 {
		max = 8
	}
	if min == 0 && max > 0 {
		min = 1
	}
	return
}
