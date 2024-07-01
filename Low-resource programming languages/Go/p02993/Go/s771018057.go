package main
 
import (
	"fmt"
)
 
func main() {
	var s string
	fmt.Scanf("%s", &s)
	
	var isBad bool
	
	isBad = false
	for i := 0; i < 3; i++{
	    if s[i] == s[i+1] {
	        isBad = true
	    }
	    
	}
	
	if isBad {
        fmt.Printf("Bad")
	} else {
	    fmt.Printf("Good")
	}
}