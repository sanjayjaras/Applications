#!/bin/bash
idle=$(mpstat | grep all|awk '{print $13}')
#used=$(mpstat | grep all|awk '{print ($4+$5+$6)}')
c=$(echo "print('{:.0f}'.format(100-$idle))" | python3;)
#c=$(echo "print('{:.0f}'.format($used))" | python3;)

avg_freq=$(less /proc/cpuinfo |grep "MHz"|awk 'BEGIN{sum=0}{sum=sum+$4;}END{avg=sum/NR;print avg;}')
f=$(echo "print('{:.1f}'.format($avg_freq/1000))" | python3;)
echo "$c% "$f"GHz"