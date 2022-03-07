
#boot a polybar for each monitor
cd /home/stefan/polybar
polybar -m | sed s/:.*// | tac | while read -r monitor
do 
  monitor=$monitor polybar -c config.ini main &> /dev/null &
done
