#
# This sed script removes xPath elements that are ISO types.
# They are identified as /nsp:PACKAGE_Type/ and replaced by /
#
s|/[a-z]*:[A-Z]*_[A-Za-z]*/|/|g
s|/gco:CharacterString||g
