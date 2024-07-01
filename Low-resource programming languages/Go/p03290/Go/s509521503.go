package main                                              

import "fmt"                                              
import "math"                                             
                                                          
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
        var points [][]int

        minC := 100000000

        fmt.Scanf("%d %d", &D, &G)

        for i := 0; i < D; i++ {
                var num, extra int
                fmt.Scanf("%d %d", &num, &extra)
                points = append(points, []int{num, extra})
        }

        n := len(points)

        for bit := 0; bit < (1 << n); bit++ {
                sum := 0
                count := 0
                for i := 0; i < n; i++ {
                        if bit&(1<<i) >= 1 {
                                sum += (i+1)*100*points[i][0] + points[i][1]
                                count += points[i][0]
                        }
                }

                if sum >= G {
                        minC = min(minC, count)
                } else {
                        for i := n - 1; i >= 0; i-- {
                                if bit&(1<<i) >= 1 {
                                        continue
                                }
                                for k := 0; k < points[i][0]; k++ {
                                        if sum >= G {
                                                minC = min(minC, count)
                                        }
                                        sum += (i + 1) * 100
                                        count++
                                }
                        }
                }
        }

        fmt.Printf("%v", minC)
}