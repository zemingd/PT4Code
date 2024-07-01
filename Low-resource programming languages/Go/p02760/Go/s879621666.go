package main

import (
  "fmt"
  
)

func main() {
  var bingo [3][3]int
  var a, b, c int
  for i:=0; i < 3; i++ {
      fmt.Scan(&a, &b, &c)
      bingo[i][0], bingo[i][1], bingo[i][2] = a,b,c
  }
 
  
  var n, N int
  fmt.Scan(&N)
  for i:=0; i < N; i++ {
      fmt.Scan(&n)
      search(n, &bingo)
  }
  
  if itsBingo(bingo) {
        fmt.Println("Yes")
    } else {
        fmt.Println("No")
    }
}

func search(n int, bingo *[3][3]int) {
    old := *bingo
    for i, iv := range old {
        for j, jv := range iv {
            if jv == n {
                old[i][j] = 0
            }
        } 
    }
    *bingo = old
    
}

func itsBingo(bingo [3][3]int) bool {
    
    for i:=0; i < 3; i++ {
        for j:=0; j < 3; j++ {
            if bingo[i][j] == 0 {
                if j == 1 {
                    var count int
                    for k:=1; k < 3; k++ {
                        if bingo[k][j] == 0 {
                            count++
                        }
                    }
                    if count == 2 {
                        return true
                    }
                } else if j == 0 {
                    var count int
                    for k:=1; k < 3; k++ {
                        if bingo[i][k] == 0 {
                            count++
                        }
                    }
                    
                    if count == 2 {
                        return true
                    }
                    
                    count = 0
                    for k:=1; k < 3; k++ {
                        if bingo[k][i] == 0 {
                            count++
                        }
                    }
                    
                    if count == 2 {
                        return true
                    }
                    
                    count = 0
                    if i == 0 {
                        for k:=1; k < 3; k++ {
                            if bingo[k][k] == 0 {
                                count++
                            }
                        }
                        if count == 2 {
                            return true
                        }
    
                    } else if i == 2 {
                        for k:=1; k < 3; k++ {
                            if bingo[i-k][k] == 0 {
                                count++
                            }
                        }
                        
                        if count == 2 {
                            return true
                        }
                    }
                    
                    
                } else if j == 2 {
                    var count int
                     for k:=1; k < 3; k++ {
                        if bingo[k][j] == 0 {
                            count++
                        }
                    }
                    if count == 2 {
                        return true
                    }
                    
                }
            }
        }
    }
    return false
}