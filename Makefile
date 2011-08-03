# Copyright 2009 The Go Authors. All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

include $(GOROOT)/src/Make.inc

TARG=fmath

OFILES_arm=\

OFILES_amd64=\
	sqrtf_amd64.$O\

OFILES_386=\

OFILES=\
	$(OFILES_$(GOARCH))

ALLGOFILES=\
	acosf.go\
	acoshf.go\
	asinf.go\
	asinhf.go\
	atanf.go\
	atanhf.go\
	cbrtf.go\
	ceilf.go\
	cosf.go\
	coshf.go\
	erfcf.go\
	erff.go\
	exp2f.go\
	expf.go\
	expm1f.go\
	fabsf.go\
	floorf.go\
	gammaf.go\
	j0f.go\
	j1f.go\
	log10f.go\
	log1pf.go\
	log2f.go\
	logbf.go\
	logf.go\
	sinf.go\
	sinhf.go\
	sqrtf.go\
	tanf.go\
	tanhf.go\
	truncf.go\
	y0f.go\
	y1f.go\
	atan2f.go\
   	copysignf.go\
   	fdimf.go\
   	fminf.go\
   	fmaxf.go\
   	fmodf.go\
   	hypotf.go\
   	powf.go\
	sincosf.go\

NOGOFILES=\
	$(subst _$(GOARCH).$O,.go,$(OFILES_$(GOARCH)))

GOFILES=\
	$(filter-out $(NOGOFILES),$(ALLGOFILES))\
	$(subst .go,_decl.go,$(NOGOFILES))\


# Files to be ignored by goinstall
ASMFILES=\
	sqrtf_amd64.s\

DECLFILES=\
	sqrtf_decl.go\

CLEANFILES+=$(ASMFILES) $(DECLFILES)

include $(GOROOT)/src/Make.pkg

# Workaround to have this package goinstallable
# goinstall should not see files like *_decl.go,
# so we give them a .nogoinstall extension.
$(ASMFILES): %.s: %.s.nogoinstall
	 cp $@.nogoinstall $(@)

$(DECLFILES): %.go: %.go.nogoinstall
	 cp $@.nogoinstall $(@)


