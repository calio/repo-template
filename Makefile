# Makefile for $repo name$
#
# Author: Jiale Zhi 'calio' <vipcalio@gmail.com>
#


PACKAGE = foo
VERSION = 0.0.1

release-patch:  ## patch release
	    bumpversion patch
	    git release -c --semver patch

release-minor:	## minor release
	    bumpversion minor
	    git release -c --semver minor

release-major:  ## major release
	    bumpversion major
	    git release -c --semver major

help:           ## Show this help.
	    @fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
