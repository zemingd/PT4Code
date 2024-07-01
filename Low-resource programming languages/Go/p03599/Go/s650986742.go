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
		for b := 0; b*B <= F; b++ {
			for c := 0; c*C <= F; c++ {
				water := a*A + b*B
				limit := water * E / 100

				if c*C > limit {
					continue
				}

				d := (limit - c*C) / D
				suger := c*C + d*D
				if water > 0 && water+suger <= F {
					if (water+suger)*maxSugar <= (maxWater+maxSugar)*suger {
						maxWater = water
						maxSugar = suger
					}
				}
			}
		}
	}

	fmt.Println(maxWater+maxSugar, maxSugar)
}
