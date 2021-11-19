#!/bin/bash

# setting working directory
WORK_DIR="/home/user"

# setting branch
if [ "${OPENWRT_BRANCH}" = "" ]
then
	DEFAULT_OPENWRT_BRANCH="openwrt-21.02"
else
	DEFAULT_OPENWRT_BRANCH="${OPENWRT_BRANCH}"
fi


download_openwrt() {
	cd ${WORK_DIR}

	# pull code
	if [ ! -d "openwrt" ]; then
  		git clone https://git.openwrt.org/openwrt/openwrt.git	
	fi

	# update
	cd ${WORK_DIR}/openwrt
	git stash
	git pull --all
	git pull --tags
}

change_openwrt_branch() {
	cd ${WORK_DIR}/openwrt

	if [ "${1}" = "" ]
	then
		git checkout -B ${DEFAULT_OPENWRT_BRANCH} origin/${DEFAULT_OPENWRT_BRANCH}
	else
		git checkout -B ${1} origin/${1}
	fi
}

update_install_openwrt_feeds() {
	cd ${WORK_DIR}/openwrt

	./scripts/feeds update -a
	./scripts/feeds install -a
}


openwrt_make_download() {
	cd ${WORK_DIR}/openwrt

	make download -j4
}

download_openwrt

change_openwrt_branch ${DEFAULT_OPENWRT_BRANCH}

update_install_openwrt_feeds

openwrt_make_download
