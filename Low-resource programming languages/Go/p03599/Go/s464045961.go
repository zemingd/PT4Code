// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Mon Jan  7 17:22:19 2019
//
package main

import "fmt"

func main() {
	var A, B, C, D, E, F int
	fmt.Scan(&A, &B, &C, &D, &E, &F)
	A *= 100
	B *= 100

	maxWater, maxSugar := 0, 0
	for a := 0; a*A <= F; a++ {
		for b := 0; a*A+b*B <= F; b++ {
			water := a*A + b*B
			for c := 0; water+c*C <= F; c++ {
				for d := 0; water+c*C+d*D <= F; d++ {
					suger := c*C + d*D
					total := water + suger
					if water > 0 && suger <= water*E/100 && total <= F {
						maxTotal := maxWater + maxSugar
						if total*maxSugar <= maxTotal*suger {
							maxWater = water
							maxSugar = suger
						}
					}
				}
			}
		}
	}

	fmt.Println(maxWater+maxSugar, maxSugar)
}
