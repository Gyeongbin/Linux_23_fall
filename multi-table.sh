#!/bin/sh

rowNum=$1
columnNum=$2
row=1
column=1

if [ `echo $rowNum | grep -E "[^0-9]+"` ]
then
	echo "Error! Parameters not a number:("
else
	if [ `echo $columnNum | grep -E "[^0-9]+"` ]
        then
		echo "Error! Parameters not a number:("
        else
                until [ $row -gt $rowNum ]
                do
                        until [ $column -gt $columnNum ]
                        do
                                result=`expr $row \* $column`
                                echo $row"*"$column"="$result"  " | tr -d '\n'
                                column=`expr $column + 1`
                        done
                        row=`expr $row + 1`
                        column=1
			echo '\n'
                done

	fi
fi
exit 0
