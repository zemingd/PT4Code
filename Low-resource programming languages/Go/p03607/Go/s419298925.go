package main

import (
	"fmt"
	"sort"
)

type Manual []int

func (manual Manual) asValue() Manual {
	var intSlice []int
	for _,val := range manual {
		intSlice = append(intSlice,val)
	}

	return Manual(intSlice)
}

func (manual Manual) remove(index int) {
	copy(manual[index:],manual[index + 1:])

	manual = manual[:len(manual) - 1]
}

func (manual Manual) noDuplication() Manual {
	var noDup Manual
	m := manual.asValue()
	sort.Sort(sort.IntSlice([]int(m)))

	before := make(map[int]bool)
	for _,val := range m {
		if ok := before[val];!ok {
			before[val] = true
			noDup = append(noDup,val)
		}
	}
	return noDup
}

func (manual Manual) evenNumber() Manual {
	sampleManual := manual.asValue()
	sort.Sort(sort.IntSlice([]int(sampleManual)))

	countInt := make(map[int]int,sampleManual.count())
	for _,val := range sampleManual {
		countInt[val]++
	}

	var m Manual
	for key,val := range countInt {
		if !isEven(val) {
			m = append(m,key)
		}
	}

	return m
}

func (manual Manual) count() int {
	return len(manual)
}

func isEven(num int) bool {
	if num % 2 == 0 {
		return true
	}
	return false
}

func main() {
	var manual Manual
	var N int
	var num int

	fmt.Scan(&N)
	manual = make(Manual,N)
	for count := 0;count < N; count++ {
		fmt.Scan(&num)
		manual[count] = num
	}

	fmt.Println(manual.evenNumber().count())
}
