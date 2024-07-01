package main

import(
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	
	year := s[:4]
	month := s[5:7]
	day := s[8:10]
	
	if year < "2019"  {
		fmt.Println("Heisei")
	} else if year == "2019" && month <= "04" && day <= "30" {
		fmt.Println("Heisei")
	} else {
		fmt.Println("TBD")
	}
}