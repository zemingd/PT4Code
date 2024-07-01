//  D - Summer Vacation

package main

import "fmt"
import "sort"

func main() {
	var N, M int
	fmt.Scanf("%d %d", &N, &M)

	pays := make([]int, N)

	jobs := map[int][]int{} // K日目までに可能な仕事

	for i := 0; i < N; i++ {
		var offset int
		fmt.Scanf("%d %d", &offset, &pays[i])

		if offset > M {
			continue
		}

		deadline := M - offset

		if jobs[deadline] == nil {
			jobs[deadline] = []int{}
		}

		jobs[deadline] = append(jobs[deadline], i)
	}

	deadlines := make([]int, 0, len(jobs))
	for d := range jobs {
		deadlines = append(deadlines, d)
	}

	sort.Sort((sort.IntSlice(deadlines)))

	// fmt.Printf("deadlines: %#v\njobs: %#v\n", deadlines, jobs)

	used := map[int]bool{}

	total := 0

	for d := M - 1; d >= 0; d-- {
		maxJ := 0
		max := 0

		for _, dl := range deadlines {
			if d > dl {
				continue
			}

			// fmt.Printf("d=%v, jobs[%v]=%v\n", d, dl, jobs[dl])

			for _, j := range jobs[dl] {
				if used[j] {
					continue
				}

				p := pays[j]
				if max == 0 || p > max {
					maxJ = j
					max = p
				}
			}
		}

		if max != 0 {
			used[maxJ] = true
			total += max
		}
	}

	fmt.Println(total)
}
