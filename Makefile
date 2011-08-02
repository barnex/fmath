# Copyright 2009 The Go Authors. All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

include $(GOROOT)/src/Make.inc

TARG=fmath

OFILES_arm=\
	#sqrtf_arm.$O\

OFILES_amd64=\
	#sqrtf_amd64.$O\

OFILES_386=\
	#sqrtf_386.$O\

OFILES=\
	$(OFILES_$(GOARCH))

ALLGOFILES=\
	all_port.go\
	#sqrtf.go\
	#sqrtf_port.go\

NOGOFILES=\
	$(subst _$(GOARCH).$O,.go,$(OFILES_$(GOARCH)))

GOFILES=\
	$(filter-out $(NOGOFILES),$(ALLGOFILES))\
	$(subst .go,_decl.go,$(NOGOFILES))\

include $(GOROOT)/src/Make.pkg
