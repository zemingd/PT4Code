package main

import "fmt"
import "bytes"

func main() {
    
    const n = 1              
    var code string
    fmt.Scanf("%s", &code)
    
    var buffer bytes.Buffer
     
    for i := len(code) - 1 ; i >= 0; {
        if code[i] == 'B' {
            cnt := 0 
            for  ;  i >= 0 && code[i] == 'B' ; {
                cnt ++
                i -- 
            }
            i -= cnt
        } else {
            buffer.WriteByte(code[i])
            i -= 1
        }
    }
    fmt.Println(buffer.String())
    
}