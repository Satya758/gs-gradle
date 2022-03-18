#!/bin/zsh

create() {
    file="complete/src/main/java/hello/Greeter$1.java"
    rm $file
    echo "package hello;" >> $file
    echo "public class Greeter$1 {}" >> $file
    cat $file
}

for run in {1..70000}; do
    create "$run" &
done