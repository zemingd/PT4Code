package main
import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
	//      "sort"
)

func ToIntSlice(stra []string) []int {
	var inta = make([]int, len(stra))
	for i, v := range stra {
		inta[i], _ = strconv.Atoi(v)
	}
	return inta
}

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	nmline :=strings.Split(stdin.Text()," ")
	n ,_:= strconv.Atoi(nmline[0])
	//m ,_:= strconv.Atoi(nmline[1])
	nlike :=0
	tmap := make(map[int]int)
	for first :=1; first<=30; first++ {
		tmap[first]=0
	}
	for i := 0; i <= n-1; i++ {
		stdin.Scan()
		ist := ToIntSlice(strings.Split(stdin.Text(), " "))
		for _,val := range ist[1:] {
			tmap[val]+=1
		}
	}
	for _,val := range tmap {
		if val == n {
			nlike++
		}
	}
	fmt.Println(nlike)
}
