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
	x []uint32
	y []uint32
}

func loadTestimonies() Testimonies {
	var a int
	fmt.Scanf("%d", &a)
	x := make([]uint32, a)
	y := make([]uint32, a)
	for i := 0; i < a; i++ {
		fmt.Scanf("%d %d", &x[i], &y[i])
		x[i]--
	}
	return Testimonies{x: x, y: y}
}

func honestOrUnkind(allTestimonies []Testimonies) int {
	// 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
	maxHonest := 0
	for bits := uint32(0); bits < (1 << len(allTestimonies)); bits++ {
		var flagOns []uint32
		for i := uint32(0); i < bits && i < uint32(len(allTestimonies)); i++ {
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

func in(i uint32, list []uint32) bool {
	for _, v := range list {
		if v == i {
			return true
		}
	}
	return false
}

func isCompleted(allTestimonies []Testimonies, honestIndex []uint32) bool {
	for _, i := range honestIndex {
		honestTestimonies := allTestimonies[i]
		for j, isHonest := range honestTestimonies.y {
			targetPerson := honestTestimonies.x[j]
			if isHonest == 0 {
				if in(targetPerson, honestIndex) {
					return false
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
