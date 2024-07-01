package main

import (
	"fmt"
)

func main() {
	var n, a, b, c, d int
	fmt.Scan(&n)
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)
	fmt.Scan(&d)
	var s string
	fmt.Scan(&s)

	blocked := make(map[int]bool)
	for i := 0; i < n; i++ {
		if s[i] == '#' {
			blocked[i+1] = true
		} else {
			blocked[i+1] = false
		}
	}

	if b < c && c < d {
		prevBlocked := false
		for i := b + 1; i < d; i++ {
			if prevBlocked && blocked[i] {
				fmt.Println("No")
				return
			} else if blocked[i] {
				prevBlocked = true
			} else {
				prevBlocked = false
			}
		}
		prevBlocked = false
		for i := a + 1; i < c; i++ {
			if prevBlocked && blocked[i] {
				fmt.Println("No")
				return
			} else if blocked[i] {
				prevBlocked = true
			} else {
				prevBlocked = false
			}
		}
		fmt.Println("Yes")
	} else if c < b && b < d {
		prevBlocked := false
		for i := b + 1; i < d; i++ {
			if prevBlocked && blocked[i] {
				fmt.Println("No")
				return
			} else if blocked[i] {
				prevBlocked = true
			} else {
				prevBlocked = false
			}
		}
		prevBlocked = false
		for i := a + 1; i < c; i++ {
			if prevBlocked && blocked[i] {
				fmt.Println("No")
				return
			} else if blocked[i] {
				prevBlocked = true
			} else {
				prevBlocked = false
			}
		}
		fmt.Println("Yes")
	} else {
		passable := false
		for i := b - 1; i < d; i++ {
			if !blocked[i] && !blocked[i+1] && !blocked[i+2] {
				passable = true
				break
			}
		}
		if !passable {
			fmt.Println("No")
			return
		}
		prevBlocked := false
		for i := b + 1; i < d; i++ {
			if prevBlocked && blocked[i] {
				fmt.Println("No")
				return
			} else if blocked[i] {
				prevBlocked = true
			} else {
				prevBlocked = false
			}
		}
		prevBlocked = false
		for i := a + 1; i < c; i++ {
			if prevBlocked && blocked[i] {
				fmt.Println("No")
				return
			} else if blocked[i] {
				prevBlocked = true
			} else {
				prevBlocked = false
			}
		}
		fmt.Println("Yes")
	}
}
