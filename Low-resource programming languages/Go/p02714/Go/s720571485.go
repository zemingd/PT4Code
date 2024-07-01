package main

import(
    "fmt"
)

func main(){
    var n int
    var s string
    countR := 0; countG := 0; countB := 0
    
    

    fmt.Scan(&n, &s)

    for i := 0; i < n; i++{
        if s[i] == 'R'{
            countR++
        }
        if s[i] == 'G'{
            countG++
        }
        if s[i] == 'B'{
            countB++
        }
    }
  	seki := countR * countG * countB
  
    for i := 0; i < n; i++{
        for k := i + 2; k < n; k++{
            if (k - i) % 2 == 0{
                j := (i + k) / 2
                if s[i] != s[j] && s[j] != s[k] && s[k] != s[i]{
                    seki--
                }
            }            
        }
    }
    
    fmt.Println(seki)

  	
}