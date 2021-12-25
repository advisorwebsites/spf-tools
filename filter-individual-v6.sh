#!/bin/sh
##############################################################################
#
#     We do not parsing ipv6 masks, but let us at least remove individual
#     ip6 entries.
#
##############################################################################
#
# Recommended usage: ./iprange.sh | ./filter-individual-v6.sh | ./mkblocks.sh

awk '(/ip6/ && /\//) || ! /ip6/'
