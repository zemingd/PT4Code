package main

import (
	"fmt"
)

func main() {
	var card [3][3]int
	for row := 0; row < len(card); row++ {
      for column := 0; column < len(card[0]); column++ {
			fmt.Scan(&card[row][column])
		}
	}
  
	var n,b int
    fmt.Scan(&n)
	for i := 0; i < n; i++ {
		fmt.Scan(&b)
      	for row := 0; row < len(card); row++ {
          for column := 0; column < len(card[0]); column++ {
              if card[row][column] == b {
                card[row][column] = -1
              }
            }
        }
	}
  
    if card[0][0] == card[1][1] && card[1][1] == card[2][2] {
      fmt.Println("Yes")
      return
    }
  
  	if card[0][2] == card[1][1] && card[1][1] == card[2][0] {
      fmt.Println("Yes")
      return
    }
  	
 	
  	for row := 0; row < len(card); row++ {
      	check := true
	    for column := 0; column < len(card[0]); column++ {
          if card[row][column] != -1 {
				check = false
          }  		
        }
        if check {
          fmt.Println("Yes")
          return
        }
    }
    
    for column := 0; column < len(card[0]); column++ {
      	check := true
    	for row := 0; row < len(card); row++ {
            if card[row][column] != -1 {
                  check = false
            }  		
          }
          if check {
            fmt.Println("Yes")
            return
          }
     }
  	fmt.Println("No")
}