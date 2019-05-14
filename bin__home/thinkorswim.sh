#!/bin/sh
JAVA_OLD="$(archlinux-java get)"
sudo archlinux-java set java-8-openjdk
/home/brian/lib/thinkorswim/thinkorswim &
sleep 2s
sudo archlinux-java set $JAVA_OLD
wait
