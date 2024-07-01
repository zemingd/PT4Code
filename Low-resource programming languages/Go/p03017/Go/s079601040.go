package main

import (
	"fmt"
	"strings"
)

var stones []string

func judge(closePIndex int, closeGIndex int, distantPIndex int, distantGIndex int) {
	// check a person who has a more distant goal first
	for {
		// check if the person can arrive the goal
		if distantPIndex+1 == distantGIndex {
			distantPIndex++
			break
		} else if distantPIndex+2 == distantGIndex {
			distantPIndex += 2
			break
		}

		// check if the person can move forward
		if stones[distantPIndex+2] != "#" {
			distantPIndex += 2
			continue
		} else if stones[distantPIndex+1] != "#" {
			distantPIndex++
			continue
		}

		// no way to reach the goal or go forward
		fmt.Println("No")
		return
	}

	// Check the other person next
	for {
		// check if the person can arrive the goal
		if closePIndex+1 == closeGIndex || closePIndex+2 == closeGIndex {
			fmt.Println("Yes")
			return
		}

		// check if the person can move forward
		if stones[closePIndex+2] != "#" && closePIndex+2 != distantPIndex {
			closePIndex += 2
			continue
		} else if stones[closePIndex+1] != "#" && closePIndex+1 != distantPIndex {
			closePIndex++
			continue
		}

		// no way to reach the goal or go forward
		fmt.Println("No")
		return
	}
}

func main() {
	var n, a, b, c, d int
	fmt.Scan(&n, &a, &b, &c, &d)

	var s string
	fmt.Scan(&s)
	stones = strings.Split(s, "")

	if c < d {
		judge(a-1, c-1, b-1, d-1)
	} else {
		// Check if A can overtake B
		// Need to be "AB." at some point

		// 1. find a place where ".B."
		bIndex := b - 1
		for {
			// Reached the end of the path
			if bIndex+1 == n {
				fmt.Println("No")
				return
			}

			// Find a nice place <3
			if stones[bIndex-1] == "." && stones[bIndex+1] == "." {
				break
			}

			// Can't move anymore (reached B's goal)
			if bIndex == d-1 {
				fmt.Println("No")
				return
			}

			// Try one step
			if stones[bIndex+1] == "." {
				bIndex++
				continue
			}

			// Try two steps
			if bIndex+2 < n && stones[bIndex+2] == "." {
				bIndex += 2
				continue
			}

			// No way to move
			fmt.Println("No")
			return
		}

		// 2. move A to just before B --> "AB."
		aIndex := a - 1
		for {
			// already "AB."
			if aIndex == bIndex-1 {
				break
			}
			// one step to "AB."
			if aIndex+1 == bIndex-1 {
				aIndex++
				break
			}
			// two steps to "AB."
			if aIndex+2 == bIndex-1 {
				aIndex += 2
				break
			}

			// try two steps forward
			if stones[aIndex+2] == "." {
				aIndex += 2
				continue
			}
			// try one step forward
			if stones[aIndex+1] == "." {
				aIndex++
				continue
			}

			// No way to move
			fmt.Println("No")
			return
		}

		// 3. overtake B --> ".BA"
		aIndex += 2

		// 4. do judge for the rest of the path
		judge(bIndex, d-1, aIndex, c-1)
	}
}
