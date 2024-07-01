package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	cnt := 0
  for i := 0; i < len(s); i++ {
		if s[i] == 'R' {
			cnt ++
		}
	}

	if s == "RSR" {
		fmt.Println(1)
	} else {
		fmt.Println(cnt)
	}
}
