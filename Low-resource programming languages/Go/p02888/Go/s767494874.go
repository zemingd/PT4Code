package main
import (
	"fmt"
	"os"
	"strings"
	"strconv"
	"bufio"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	stdin.Scan()
	text := stdin.Text()
	ss := strings.Split(text, " ")
	var tt = []int{}
	for _, i := range ss {
		j, _ := strconv.Atoi(i) 
		tt = append(tt, j)
	}
	c := 0
	for i := 0; i < len(tt); i++ {
		for j := 0; j < len(tt); j++ {
			if j == i {
				continue
			}
			for k := 0; k < len(tt); k++ {
				if k == i || k == j {
					continue
				}
				if tt[i] < tt[j] + tt[k] && tt[j] < tt[k] + tt[i] && tt[k] < tt[i] + tt[j] {
					c+=1

				}
			}
		}
	}
	fmt.Print(c)
}
