package main                                                                                                         
                             
import "fmt"                                              
import "math"                                             

func count(s []int, v int) int {                          
        cnt := 0                                          
                                                                                                                     
        for _, _s := range s {
                if _s == v { 
                        cnt++     
                }            
        }                                                 
        return cnt                                        
}                                                         
                                                          
func min(nums ...int) int {                               
        if len(nums) == 0 {                               
                panic("")                                                                                            
        }                                                 
        res := nums[0]                                                                                               
                             
        for i := 0; i < len(nums); i++ {
                res = int(math.Min(float64(res), float64(nums[i])))
        }                                                                                                            
        return res                                        
}                                                         
                             
func main() {                                             
        var D, G int                                      
        var tests [][]int                                                                                            
        var points []int                                  
                                                                                                                     
        fmt.Scanf("%d %d", &D, &G)                        
                             
        for i := 0; i < D; i++ {             
                var num, extra int  
                fmt.Scanf("%d %d", &num, &extra)
                tests = append(tests, []int{num, extra})
                                                          
                for k := 0; k < num; k++ {    
points = append(points, (i+1)*100)
                }
        }

        n := len(points)
        minP := 0

        for bits := 0; bits < (1 << n); bits++ {
                var pattern []int

                for i := 0; i < n; i++ {
                        if (bits & (1 << i)) >= 1 {
                                pattern = append(pattern, points[i])
                        }
                }

                total := 0
                for _, num := range pattern {
                        total += num
                }

                if total >= G {
                        if minP == 0 {
                                minP = len(pattern)
                        } else {
                                minP = min(minP, len(pattern))
                        }
                } else {
                        for i, test := range tests {
                                if count(pattern, (i+1)*100) == test[0] {
                                        total += test[1]
                                }
                        }
                        if total >= G {
                                if minP == 0 {
                                        minP = len(pattern)
                                } else {
                                        minP = min(minP, len(pattern))
                                }
                        }
                }
        }

        fmt.Print(minP)
}