package main

import "fmt"
import "os"

func main(){
	var x , y int
    fmt.Scan(&x, &y)
    
    for i := 0; i <= x; i++ {
    
    	val := i * 2 + (x-i) * 4
        
		if val == y {
        	fmt.Println("Yes")
            os.Exit(0)
        }
    }
    fmt.Print("No")
}