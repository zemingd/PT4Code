package main                                
                                            
import (                                    
        "fmt"                               
)                                           
                                            
func calc(n int) int {                      
        ans := 0                            
        for i := 1; i <= n/2; i++ {         
                if n%i == 0 {               
                        ans += 1            
                }                           
        }                                   
        return ans + 1                      
}                                           
func main() {                               
        var N int                           
        fmt.Scanf("%d", &N)                 
                                            
        ans := 0                            
        for i := 105; i <= N; i++ {         
                if calc(i) == 8 {           
                        ans += 1            
                }                           
        }                                   
        fmt.Println(ans)                    
}                                           