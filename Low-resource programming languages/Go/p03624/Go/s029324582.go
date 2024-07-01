package main

import "fmt"

func main() {
	var S string
	fmt.Scan(&S)
	s := "Zabcdefghijklmnopqrstuvwxyz"
	var a [1 + 26]bool
	cnt := 0
	for i := 0; i < len(S); i++ {
		for j := 1; j < len(s); j++ {
			if !a[j] && S[i] == s[j] {
				a[j] = true
				cnt++
			}
		}
	}
	if cnt == 26 {
		fmt.Print("None")
	} else {
		for i := 1; i < len(s); i++ {
			if !a[i] {
				fmt.Printf("%c", s[i])
				break
			}
		}
	}
	fmt.Printf("\n")
}
