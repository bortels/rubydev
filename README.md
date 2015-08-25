rubydev
=======

Ruby 2.2.2 plus my commonly used gems and utilities (git, jq, and so on)

Not much to it really. Look at the Gemspec file for the list.

Launch Script: https://raw.githubusercontent.com/bortels/rubydev/master/rubydev

Note that the launch script shares /tmp in the
container as /tmp/rubydev to make it easy to move
files in/out if need be.

This will show up on the docker index at https://registry.hub.docker.com/u/bortels/rubydev/

changes:

2015-08-25 - moved to Alpine from Ubuntu; reduced size from 978 megs to 257 megs.
             Also updated to ruby 2.2.2, and cleaned out some unused gems.
