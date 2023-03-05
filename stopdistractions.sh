#!/bin/bash

social_media=(
	linkedin.com
	www.linkedin.com
	api.linkedin.com
	twitter.com
	www.twitter.com
	api.twitter.com
	facebook.com
	www.facebook.com
	api.facebook.com
	www.youtube.com
	youtube.com
	api.youtube.com
	instagram.com
	api.instagram.com
	www.instagram.com
)

if [[ $1 == "block" ]]; then
	for i in "${social_media[@]}"; do
		sed -i "/^127.0.0.1 $i/d" /etc/hosts
		echo "127.0.0.1 $i" >>  /etc/hosts
	done
	
	killall firefox
fi

if [[ $1 == "unblock" ]]; then
        for i in "${social_media[@]}"; do
                sed -i "/^127.0.0.1 $i/d" /etc/hosts
        done
fi
