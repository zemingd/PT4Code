package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	var check bool
	for ;; {
		check = true
		if len(s) == 0 {
			fmt.Println("YES")
			break
		}
		if len(s) < 5 || len(s) == 8 || len(s) == 9{
			fmt.Println("NO")
			break
		}
		if s[0:5] == "dream" {
			if len(s) == 5 || s[5:6] == "d" {
				s = s[5:]
				check = false
			} else if len(s) >= 7 && s[5:7] == "er" {
				if len(s) == 7 || s[7:8] == "d" || s[7:8] == "e" {
					s = s[7:]
					check = false
				} else if s[7:8] == "a" {
					s = s[5:]
					check = false
				}
			}
		} else if s[0:5] == "erase" {
			check = false
			if len(s) == 5 {
				s = s[5:]
			}
			if s[5:6] == "r" {
				s = s[6:]
			} else {
				s = s[5:]
			}
		}
		if check {
			fmt.Println("NO")
			break
		}
	}
}
