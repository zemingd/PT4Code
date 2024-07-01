package main

/*
        N
	T A
        H1 H2 H3 ... HN
*/
import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
	"strings"
"math"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	n, _ := strconv.Atoi(stdin.Text())
	_ = n
	stdin.Scan()
	ta := strings.Split(stdin.Text(), " ")

	t_i, _ := strconv.Atoi(ta[0])
	t := float64(t_i)
	a_i, _ := strconv.Atoi(ta[1])
	a := float64(a_i)
	stdin.Scan()
	line := strings.Split(stdin.Text(), " ")
			log.Println(line)
		is := make([]float64, len(line))
		for i, v := range line {
			t_i, _ := strconv.Atoi(v)
			tt := float64(t_i)
			is[i] = math.Abs(Avgx(t,tt)-a)
			log.Println(i ," is : ",is[i])
		}
 	index:=1 
	log.Print(is)
	for i,v := range is {
	log.Printf("%v %v\n",i,v)
		for j,w :=range is {
			if v >= w {
				index = j+1
				break
			}
		}
	}

	fmt.Println(index)
	// T A // T=avg A=target	

}
func Avgx(tp float64, x float64) float64 {
	return tp - x*0.006
}