package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	allTestimonies := make([]Testimonies, n)
	for i := 0; i < n; i++ {
		allTestimonies[i] = loadTestimonies()
	}
	answer := honestOrUnkind(allTestimonies)
	fmt.Println(answer)
}

type Testimonies struct {
	x []int
	y []int
}

func loadTestimonies() Testimonies {
	var a int
	fmt.Scanf("%d", &a)
	x := make([]int, a)
	y := make([]int, a)
	for i := 0; i < a; i++ {
		fmt.Scanf("%d %d", &x[i], &y[i])
		x[i]--
	}
	return Testimonies{x: x, y: y}
}

func honestOrUnkind(allTestimonies []Testimonies) int {
	maxHonest := 0
	for bits := 0; bits < (1 << bits); bits++ {
		var flagOns []int
		for i := 0; i < bits && i < len(allTestimonies); i++ {
			if (bits & (1 << i)) > 0 {
				flagOns = append(flagOns, i)
			}
		}
		if len(flagOns) > maxHonest && isCompleted(allTestimonies, flagOns) {
			maxHonest = len(flagOns)
		}
	}
	return maxHonest

}

func in(i int, list []int) bool {
	for _, v := range list {
		if v == i {
			return true
		}
	}
	return false
}

func isCompleted(allTestimonies []Testimonies, honestIndex []int) bool {
	for _, i := range honestIndex {
		honestTestimonies := allTestimonies[i]
		for j, isHonest := range honestTestimonies.y {
			targetPerson := honestTestimonies.x[j]
			if isHonest == 0 {
				for _, k := range honestIndex {
					if targetPerson == k {
						return false
					}
				}
			} else {
				// this case covered by other honestIndex, so ignore.
				if !in(targetPerson, honestIndex) {
					return false
				}
			}
		}
	}
	return true
}
